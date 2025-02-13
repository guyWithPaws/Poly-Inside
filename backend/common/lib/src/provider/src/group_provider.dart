import 'package:common/common.dart';
import 'package:drift/drift.dart';

mixin class GroupProviderImpl implements GroupProvider {
  final database = DatabaseProviderImpl.db;

  @override
  Stream<List<String>> getGroupsNumers(String groupPattern, int count) =>
      (database.select(database.groups)
            ..where((t) => t.number.like(groupPattern))
            ..limit(count))
          .watch()
          .map(
              (groups) => groups.map((group) => group.number).toSet().toList());
}
