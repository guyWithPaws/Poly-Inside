import 'package:common/common.dart';
import 'package:drift/drift.dart';
import 'package:shared/src/protobuf/service.pb.dart';

mixin class ProfessorProviderImpl implements ProfessorProvider {
  final database = DatabaseProviderImpl.db;

  @override
  Stream<List<Professor>> findProfessorByName(String name, int count) =>
      (database.select(database.professors)
            ..where((u) => u.name.like('%$name%'))
            ..limit(count))
          .watch();

  @override
  Stream<List<Professor>> getAllProfessors(int count) =>
      (database.select(database.professors)..limit(count))
          .watch()
          .asBroadcastStream();

  @override
  Future<void> addProfessor(Professor professor) async {
    await database.into(database.professors).insert(
          ProfessorsCompanion(
            objectivity: Value(professor.objectivity),
            loyalty: Value(professor.loyalty),
            harshness: Value(professor.harshness),
            professionalism: Value(professor.professionalism),
            reviewsCount: Value<int>(professor.reviewsCount),
            rating: Value<double>(professor.rating),
            id: Value<String>(professor.id),
            name: Value<String>(professor.name),
            smallAvatar: Value<Uint8List>(
              Uint8List.fromList(professor.smallAvatar),
            ),
            avatar: Value<Uint8List>(
              Uint8List.fromList(
                professor.avatar,
              ),
            ),
          ),
        );
  }

  @override
  Future<void> addProfessorToGroup(
          String id, String number, String professorId) async =>
      await database.into(database.groups).insert(
            GroupsCompanion(
              id: Value(id),
              number: Value(number),
              professorId: Value(professorId),
            ),
          );

  @override
  Future<List<Professor>> getOnceAllProfessors() async =>
      await database.select(database.professors).get();

  @override
  Stream<List<Professor>> getProfessorsByGroup(int count, String group) async* {
    ListProfessorsByGroupRequest();
    var professorsByGroup = await (database.select(database.groups)
          ..where((t) => t.number.equals(group)))
        .get();
    var professorsIds =
        professorsByGroup.map((group) => group.professorId).toList();
    yield* (database.select(database.professors)
          ..where((u) => u.id.isIn(professorsIds))
          ..limit(count))
        .watch()
        .asBroadcastStream();
  }
}
