import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:postgres/postgres.dart';
import 'package:postgres/postgres.dart' as pg;
import 'package:shared/shared.dart';

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
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 5;

  static QueryExecutor _openConnection() => PgDatabase(
        endpoint: pg.Endpoint(
            host: 'database',
            database: 'postgres_db', // Имя вашей базы данных
            username: 'postgres_user', // Имя пользователя
            password: 'postgres_password',
            port: 5432),
        settings: const ConnectionSettings(
          // If you expect to talk to a Postgres database over
          // a public connection,
          // please use SslMode.verifyFull instead.
          sslMode: SslMode.disable,
        ),
      );

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        onUpgrade: (m, from, to) async {
          if (from < 2) {
            await m.createTable(reactions);
            await m.createTable(groups);
          }
          if (from < 3) {
            await m.addColumn(professors, professors.smallAvatar);
          }
          if (from < 4) {
            await m.addColumn(users, users.group);
          }
          if (from < 5) {
            await m.createTable(groupsNumbers);
          }
        },
      );
}
