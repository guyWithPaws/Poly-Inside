import 'package:common/src/common_base.dart';
import 'package:drift/drift.dart';
import 'package:shared/src/protobuf/service.pb.dart';

mixin class UserProviderImpl implements UserProvider {
  final database = DatabaseProviderImpl.db;

  @override
  Future<void> addUser(User user) async {
    await database.into(database.users).insert(
          UsersCompanion(
            id: Value<int>(user.id),
            rating: Value<int>(user.rating),
            group: Value<String>(user.group),
            name: Value<String>(user.name),
            avatar: Value<Uint8List>(
              Uint8List.fromList(
                user.avatar,
              ),
            ),
          ),
        );
  }

  @override
  Stream<List<Group>> getGroups(int count, String number) =>
      (database.select(database.groups)
            ..where((u) => u.number.like('%$number%'))
            ..limit(count))
          .watch();

  @override
  Future<User?> getUser(int userId) async {
    final users = await (database.select(database.users)
          ..where(
            (u) => u.id.equals(
              userId,
            ),
          ))
        .get();
    return users.isEmpty ? null : users.first;
  }

  @override
  Future<void> updateGroupNumber(int id, String newGroupNumber) async =>
      await (database.update(database.users)..where((t) => t.id.equals(id)))
          .write(UsersCompanion(group: Value(newGroupNumber)));

  @override
  Future<bool> updateUser(User user) async =>
      await database.update(database.users).replace(
            UsersCompanion(
              id: Value<int>(user.id),
              group: Value<String>(user.group),
              rating: Value<int>(user.rating),
              name: Value<String>(user.name),
              avatar: Value<Uint8List>(
                Uint8List.fromList(
                  user.avatar,
                ),
              ),
            ),
          );

  @override
  Future<void> updateUserName(int id, String newUserName) async =>
      await (database.update(database.users)..where((t) => t.id.equals(id)))
          .write(UsersCompanion(name: Value(newUserName)));
}
