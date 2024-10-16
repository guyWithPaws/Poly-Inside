import 'package:drift/drift.dart';
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

class Groups extends Table {
  TextColumn get id => text()();
  TextColumn get number => text()();
  TextColumn get professorId => text()();

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
  //TextColumn get group => text()();
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

@DriftDatabase(
    tables: [Professors, Users, Reviews, RejectedReviews, Reactions, Groups])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 4;

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
        },
      );
}
