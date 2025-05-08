import 'package:common/src/database/db_migration.dart';
import 'package:dotenv/dotenv.dart';
import 'package:drift/drift.dart';
import 'package:drift/internal/versioned_schema.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:postgres/postgres.dart';
import 'package:postgres/postgres.dart' as pg;
import 'package:shared/shared.dart';
import 'package:talker/talker.dart';

part 'database.g.dart';

@UseRowClass(Professor)
class Professors extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  BlobColumn get smallAvatar => blob()();
  BlobColumn get avatar => blob()();
  IntColumn get reviewsCount => integer()();
  RealColumn get rating => real()();
  RealColumn get objectivity => real()();
  RealColumn get loyalty => real()();
  RealColumn get professionalism => real()();
  RealColumn get harshness => real()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

@UseRowClass(Group)
class Groups extends Table {
  TextColumn get id => text()();
  TextColumn get number => text()();
  TextColumn get professorId => text()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

@UseRowClass(GroupNumber)
class GroupsNumbers extends Table {
  TextColumn get id => text()();
  TextColumn get number => text()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

@UseRowClass(Reaction)
class Reactions extends Table {
  TextColumn get id => text()();
  IntColumn get userId => integer()();
  TextColumn get professorId => text()();
  TextColumn get reviewId => text()();
  BoolColumn get liked => boolean()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

@UseRowClass(Review)
class RejectedReviews extends Table {
  TextColumn get id => text()();
  IntColumn get userId => integer()();
  TextColumn get professorId => text()();
  TextColumn get comment => text()();
  RealColumn get objectivity => real()();
  RealColumn get loyalty => real()();
  RealColumn get professionalism => real()();
  RealColumn get harshness => real()();
  TextColumn get date => text()();
  IntColumn get likes => integer()();
  IntColumn get dislikes => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

@UseRowClass(User)
class Users extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  BlobColumn get avatar => blob()();
  IntColumn get rating => integer().withDefault(const Constant<int>(0))();
  TextColumn get group => text()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

@UseRowClass(Review)
class Reviews extends Table {
  TextColumn get id => text()();
  IntColumn get userId => integer()();
  TextColumn get professorId => text()();
  TextColumn get comment => text()();
  RealColumn get objectivity => real()();
  RealColumn get loyalty => real()();
  RealColumn get professionalism => real()();
  RealColumn get harshness => real()();
  TextColumn get date => text()();
  IntColumn get likes => integer()();
  IntColumn get dislikes => integer()();
  IntColumn get currentUserReaction => integer().nullable()();
  TextColumn get currentUserReactionLink => text().nullable()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

@DriftDatabase(tables: [
  Professors,
  Users,
  Reviews,
  RejectedReviews,
  Reactions,
  Groups,
  GroupsNumbers
])
class AppDatabase extends _$AppDatabase {
  AppDatabase({
    required this.talker,
  }) : super(_openConnection());

  final Talker talker;

  @override
  int get schemaVersion => 6;

  static QueryExecutor _openConnection() {
    var env = DotEnv()..load(['.env', 'backend/common/.env']);
    return PgDatabase(
      endpoint: pg.Endpoint(
        host: env['DATABASE_HOST']!,
        database: env['DATABASE_NAME']!, // Имя вашей базы данных
        username: env['DATABASE_USERNAME']!, // Имя пользователя
        password: env['DATABASE_PASSWORD']!,
        port: int.parse(env['DATABASE_PORT']!),
      ),
      settings: const ConnectionSettings(
        // If you expect to talk to a Postgres database over
        // a public connection,
        // please use SslMode.verifyFull instead.
        sslMode: SslMode.disable,
      ),
    );
  }

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        var watch = Stopwatch()..start();
        talker.info('[migration][onCreate] Starting full schema creation');
        try {
          await m.createAll();
          watch.stop();
          talker.info(
              '[migration][onCreate] Schema creation completed in ${watch.elapsedMilliseconds}ms');
        } catch (e, stack) {
          watch.stop();
          talker.error(
              '[migration][onCreate] Failed after ${watch.elapsedMilliseconds}ms: $e',
              e,
              stack);
          rethrow;
        }
      },
      onUpgrade: (m, from, to) async {
        var watch = Stopwatch()..start();
        talker.info('[migration][onUpgrade] Upgrading schema from v$from to v$to');
        await transaction(
          () => VersionedSchema.runMigrationSteps(
            migrator: m,
            from: from,
            to: to,
            steps: migrationSteps(
              from4To5: (Migrator m, Schema5 schema) async {
                talker.log('Trying migrate to 5 schrma version');
                await m.createTable(schema.groupsNumbers);
              },
              from5To6: (Migrator m, Schema6 schema) async {
                talker.log('Trying migrate to 6 schema version');
                await m.addColumn(
                    schema.reviews, schema.reviews.currentUserReaction);
                await m.addColumn(
                    schema.reviews, schema.reviews.currentUserReactionLink);
              },
            ),
          ),
        );
      },
    );
  }

  // @override
  // MigrationStrategy get migration => MigrationStrategy(
  //       onCreate: (m) async {
  //         await m.createAll();
  //       },
  //       onUpgrade: (m, from, to) async {
  //         if (from < 2) {
  //           await m.createTable(reactions);
  //           await m.createTable(groups);
  //         }
  //         if (from < 3) {
  //           await m.addColumn(professors, professors.smallAvatar);
  //         }
  //         if (from < 4) {
  //           await m.addColumn(users, users.group);
  //         }
  //         if (from < 5) {
  //           await m.createTable(groupsNumbers);
  //         }
  //         if (from < 6) {

  //         }
  //       },
  //     );
}
