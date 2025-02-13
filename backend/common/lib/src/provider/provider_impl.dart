import 'package:common/src/provider/src/group_provider.dart';
import 'package:common/src/provider/src/professor_provider.dart';
import 'package:common/src/provider/src/reaction_provider.dart';
import 'package:common/src/provider/src/rejected_review_provider.dart';
import 'package:common/src/provider/src/review_provider.dart';
import 'package:common/src/provider/src/user_provider.dart';
import '../database/database.dart';

class DatabaseProviderImpl
    with
        ProfessorProviderImpl,
        UserProviderImpl,
        GroupProviderImpl,
        ReactionProviderImpl,
        RejectedReviewProviderImpl,
        ReviewProviderImpl {

  static late AppDatabase _db;

  static Future<void> initialize(AppDatabase database) async {
    _db = database;
  }

  static AppDatabase get db => _db;
}
