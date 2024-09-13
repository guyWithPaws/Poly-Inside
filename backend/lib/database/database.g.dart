// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ProfessorsTable extends Professors
    with TableInfo<$ProfessorsTable, Professor> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProfessorsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  @override
  late final GeneratedColumn<String> avatar = GeneratedColumn<String>(
      'avatar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, avatar];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'professors';
  @override
  VerificationContext validateIntegrity(Insertable<Professor> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta,
          avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta));
    } else if (isInserting) {
      context.missing(_avatarMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Professor map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Professor(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      avatar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatar'])!,
    );
  }

  @override
  $ProfessorsTable createAlias(String alias) {
    return $ProfessorsTable(attachedDatabase, alias);
  }
}

class ProfessorsCompanion extends UpdateCompanion<Professor> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> avatar;
  final Value<int> rowid;
  const ProfessorsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.avatar = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProfessorsCompanion.insert({
    required String id,
    required String name,
    required String avatar,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        avatar = Value(avatar);
  static Insertable<Professor> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? avatar,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (avatar != null) 'avatar': avatar,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProfessorsCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? avatar,
      Value<int>? rowid}) {
    return ProfessorsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<String>(avatar.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfessorsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('avatar: $avatar, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  @override
  late final GeneratedColumn<Uint8List> avatar = GeneratedColumn<Uint8List>(
      'avatar', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<int> rating = GeneratedColumn<int>(
      'rating', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [id, name, avatar, rating];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta,
          avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta));
    } else if (isInserting) {
      context.missing(_avatarMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta,
          rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      avatar: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}avatar'])!,
      rating: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rating'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> name;
  final Value<Uint8List> avatar;
  final Value<int> rating;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.avatar = const Value.absent(),
    this.rating = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required Uint8List avatar,
    this.rating = const Value.absent(),
  })  : name = Value(name),
        avatar = Value(avatar);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<Uint8List>? avatar,
    Expression<int>? rating,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (avatar != null) 'avatar': avatar,
      if (rating != null) 'rating': rating,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<Uint8List>? avatar,
      Value<int>? rating}) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
      rating: rating ?? this.rating,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<Uint8List>(avatar.value);
    }
    if (rating.present) {
      map['rating'] = Variable<int>(rating.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('avatar: $avatar, ')
          ..write('rating: $rating')
          ..write(')'))
        .toString();
  }
}

class $ReviewsTable extends Reviews with TableInfo<$ReviewsTable, Review> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReviewsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _professorIdMeta =
      const VerificationMeta('professorId');
  @override
  late final GeneratedColumn<int> professorId = GeneratedColumn<int>(
      'professor_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _commentMeta =
      const VerificationMeta('comment');
  @override
  late final GeneratedColumn<String> comment = GeneratedColumn<String>(
      'comment', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _objectivityMeta =
      const VerificationMeta('objectivity');
  @override
  late final GeneratedColumn<double> objectivity = GeneratedColumn<double>(
      'objectivity', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _loyaltyMeta =
      const VerificationMeta('loyalty');
  @override
  late final GeneratedColumn<double> loyalty = GeneratedColumn<double>(
      'loyalty', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _professionalismMeta =
      const VerificationMeta('professionalism');
  @override
  late final GeneratedColumn<double> professionalism = GeneratedColumn<double>(
      'professionalism', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _harshnessMeta =
      const VerificationMeta('harshness');
  @override
  late final GeneratedColumn<double> harshness = GeneratedColumn<double>(
      'harshness', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<int> rating = GeneratedColumn<int>(
      'rating', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        professorId,
        comment,
        objectivity,
        loyalty,
        professionalism,
        harshness,
        date,
        rating
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reviews';
  @override
  VerificationContext validateIntegrity(Insertable<Review> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('professor_id')) {
      context.handle(
          _professorIdMeta,
          professorId.isAcceptableOrUnknown(
              data['professor_id']!, _professorIdMeta));
    } else if (isInserting) {
      context.missing(_professorIdMeta);
    }
    if (data.containsKey('comment')) {
      context.handle(_commentMeta,
          comment.isAcceptableOrUnknown(data['comment']!, _commentMeta));
    } else if (isInserting) {
      context.missing(_commentMeta);
    }
    if (data.containsKey('objectivity')) {
      context.handle(
          _objectivityMeta,
          objectivity.isAcceptableOrUnknown(
              data['objectivity']!, _objectivityMeta));
    } else if (isInserting) {
      context.missing(_objectivityMeta);
    }
    if (data.containsKey('loyalty')) {
      context.handle(_loyaltyMeta,
          loyalty.isAcceptableOrUnknown(data['loyalty']!, _loyaltyMeta));
    } else if (isInserting) {
      context.missing(_loyaltyMeta);
    }
    if (data.containsKey('professionalism')) {
      context.handle(
          _professionalismMeta,
          professionalism.isAcceptableOrUnknown(
              data['professionalism']!, _professionalismMeta));
    } else if (isInserting) {
      context.missing(_professionalismMeta);
    }
    if (data.containsKey('harshness')) {
      context.handle(_harshnessMeta,
          harshness.isAcceptableOrUnknown(data['harshness']!, _harshnessMeta));
    } else if (isInserting) {
      context.missing(_harshnessMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta,
          rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Review map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Review(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      comment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}comment'])!,
      objectivity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}objectivity'])!,
      loyalty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}loyalty'])!,
      professionalism: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}professionalism'])!,
      harshness: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}harshness'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      professorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}professor_id'])!,
      rating: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rating'])!,
    );
  }

  @override
  $ReviewsTable createAlias(String alias) {
    return $ReviewsTable(attachedDatabase, alias);
  }
}

class ReviewsCompanion extends UpdateCompanion<Review> {
  final Value<String> id;
  final Value<int> userId;
  final Value<int> professorId;
  final Value<String> comment;
  final Value<double> objectivity;
  final Value<double> loyalty;
  final Value<double> professionalism;
  final Value<double> harshness;
  final Value<String> date;
  final Value<int> rating;
  final Value<int> rowid;
  const ReviewsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.professorId = const Value.absent(),
    this.comment = const Value.absent(),
    this.objectivity = const Value.absent(),
    this.loyalty = const Value.absent(),
    this.professionalism = const Value.absent(),
    this.harshness = const Value.absent(),
    this.date = const Value.absent(),
    this.rating = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ReviewsCompanion.insert({
    required String id,
    required int userId,
    required int professorId,
    required String comment,
    required double objectivity,
    required double loyalty,
    required double professionalism,
    required double harshness,
    required String date,
    required int rating,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        professorId = Value(professorId),
        comment = Value(comment),
        objectivity = Value(objectivity),
        loyalty = Value(loyalty),
        professionalism = Value(professionalism),
        harshness = Value(harshness),
        date = Value(date),
        rating = Value(rating);
  static Insertable<Review> custom({
    Expression<String>? id,
    Expression<int>? userId,
    Expression<int>? professorId,
    Expression<String>? comment,
    Expression<double>? objectivity,
    Expression<double>? loyalty,
    Expression<double>? professionalism,
    Expression<double>? harshness,
    Expression<String>? date,
    Expression<int>? rating,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (professorId != null) 'professor_id': professorId,
      if (comment != null) 'comment': comment,
      if (objectivity != null) 'objectivity': objectivity,
      if (loyalty != null) 'loyalty': loyalty,
      if (professionalism != null) 'professionalism': professionalism,
      if (harshness != null) 'harshness': harshness,
      if (date != null) 'date': date,
      if (rating != null) 'rating': rating,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ReviewsCompanion copyWith(
      {Value<String>? id,
      Value<int>? userId,
      Value<int>? professorId,
      Value<String>? comment,
      Value<double>? objectivity,
      Value<double>? loyalty,
      Value<double>? professionalism,
      Value<double>? harshness,
      Value<String>? date,
      Value<int>? rating,
      Value<int>? rowid}) {
    return ReviewsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      professorId: professorId ?? this.professorId,
      comment: comment ?? this.comment,
      objectivity: objectivity ?? this.objectivity,
      loyalty: loyalty ?? this.loyalty,
      professionalism: professionalism ?? this.professionalism,
      harshness: harshness ?? this.harshness,
      date: date ?? this.date,
      rating: rating ?? this.rating,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (professorId.present) {
      map['professor_id'] = Variable<int>(professorId.value);
    }
    if (comment.present) {
      map['comment'] = Variable<String>(comment.value);
    }
    if (objectivity.present) {
      map['objectivity'] = Variable<double>(objectivity.value);
    }
    if (loyalty.present) {
      map['loyalty'] = Variable<double>(loyalty.value);
    }
    if (professionalism.present) {
      map['professionalism'] = Variable<double>(professionalism.value);
    }
    if (harshness.present) {
      map['harshness'] = Variable<double>(harshness.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (rating.present) {
      map['rating'] = Variable<int>(rating.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReviewsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('professorId: $professorId, ')
          ..write('comment: $comment, ')
          ..write('objectivity: $objectivity, ')
          ..write('loyalty: $loyalty, ')
          ..write('professionalism: $professionalism, ')
          ..write('harshness: $harshness, ')
          ..write('date: $date, ')
          ..write('rating: $rating, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProfessorsTable professors = $ProfessorsTable(this);
  late final $UsersTable users = $UsersTable(this);
  late final $ReviewsTable reviews = $ReviewsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [professors, users, reviews];
}

typedef $$ProfessorsTableCreateCompanionBuilder = ProfessorsCompanion Function({
  required String id,
  required String name,
  required String avatar,
  Value<int> rowid,
});
typedef $$ProfessorsTableUpdateCompanionBuilder = ProfessorsCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> avatar,
  Value<int> rowid,
});

class $$ProfessorsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ProfessorsTable> {
  $$ProfessorsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get avatar => $state.composableBuilder(
      column: $state.table.avatar,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ProfessorsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ProfessorsTable> {
  $$ProfessorsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get avatar => $state.composableBuilder(
      column: $state.table.avatar,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ProfessorsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProfessorsTable,
    Professor,
    $$ProfessorsTableFilterComposer,
    $$ProfessorsTableOrderingComposer,
    $$ProfessorsTableCreateCompanionBuilder,
    $$ProfessorsTableUpdateCompanionBuilder,
    (Professor, BaseReferences<_$AppDatabase, $ProfessorsTable, Professor>),
    Professor,
    PrefetchHooks Function()> {
  $$ProfessorsTableTableManager(_$AppDatabase db, $ProfessorsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ProfessorsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ProfessorsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> avatar = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfessorsCompanion(
            id: id,
            name: name,
            avatar: avatar,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required String avatar,
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfessorsCompanion.insert(
            id: id,
            name: name,
            avatar: avatar,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ProfessorsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProfessorsTable,
    Professor,
    $$ProfessorsTableFilterComposer,
    $$ProfessorsTableOrderingComposer,
    $$ProfessorsTableCreateCompanionBuilder,
    $$ProfessorsTableUpdateCompanionBuilder,
    (Professor, BaseReferences<_$AppDatabase, $ProfessorsTable, Professor>),
    Professor,
    PrefetchHooks Function()>;
typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  Value<int> id,
  required String name,
  required Uint8List avatar,
  Value<int> rating,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<Uint8List> avatar,
  Value<int> rating,
});

class $$UsersTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<Uint8List> get avatar => $state.composableBuilder(
      column: $state.table.avatar,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get rating => $state.composableBuilder(
      column: $state.table.rating,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UsersTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<Uint8List> get avatar => $state.composableBuilder(
      column: $state.table.avatar,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get rating => $state.composableBuilder(
      column: $state.table.rating,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$UsersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()> {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UsersTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UsersTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<Uint8List> avatar = const Value.absent(),
            Value<int> rating = const Value.absent(),
          }) =>
              UsersCompanion(
            id: id,
            name: name,
            avatar: avatar,
            rating: rating,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required Uint8List avatar,
            Value<int> rating = const Value.absent(),
          }) =>
              UsersCompanion.insert(
            id: id,
            name: name,
            avatar: avatar,
            rating: rating,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UsersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()>;
typedef $$ReviewsTableCreateCompanionBuilder = ReviewsCompanion Function({
  required String id,
  required int userId,
  required int professorId,
  required String comment,
  required double objectivity,
  required double loyalty,
  required double professionalism,
  required double harshness,
  required String date,
  required int rating,
  Value<int> rowid,
});
typedef $$ReviewsTableUpdateCompanionBuilder = ReviewsCompanion Function({
  Value<String> id,
  Value<int> userId,
  Value<int> professorId,
  Value<String> comment,
  Value<double> objectivity,
  Value<double> loyalty,
  Value<double> professionalism,
  Value<double> harshness,
  Value<String> date,
  Value<int> rating,
  Value<int> rowid,
});

class $$ReviewsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ReviewsTable> {
  $$ReviewsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get professorId => $state.composableBuilder(
      column: $state.table.professorId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get objectivity => $state.composableBuilder(
      column: $state.table.objectivity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get loyalty => $state.composableBuilder(
      column: $state.table.loyalty,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get professionalism => $state.composableBuilder(
      column: $state.table.professionalism,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get harshness => $state.composableBuilder(
      column: $state.table.harshness,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get rating => $state.composableBuilder(
      column: $state.table.rating,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ReviewsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ReviewsTable> {
  $$ReviewsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get professorId => $state.composableBuilder(
      column: $state.table.professorId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get objectivity => $state.composableBuilder(
      column: $state.table.objectivity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get loyalty => $state.composableBuilder(
      column: $state.table.loyalty,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get professionalism => $state.composableBuilder(
      column: $state.table.professionalism,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get harshness => $state.composableBuilder(
      column: $state.table.harshness,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get rating => $state.composableBuilder(
      column: $state.table.rating,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ReviewsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ReviewsTable,
    Review,
    $$ReviewsTableFilterComposer,
    $$ReviewsTableOrderingComposer,
    $$ReviewsTableCreateCompanionBuilder,
    $$ReviewsTableUpdateCompanionBuilder,
    (Review, BaseReferences<_$AppDatabase, $ReviewsTable, Review>),
    Review,
    PrefetchHooks Function()> {
  $$ReviewsTableTableManager(_$AppDatabase db, $ReviewsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ReviewsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ReviewsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<int> professorId = const Value.absent(),
            Value<String> comment = const Value.absent(),
            Value<double> objectivity = const Value.absent(),
            Value<double> loyalty = const Value.absent(),
            Value<double> professionalism = const Value.absent(),
            Value<double> harshness = const Value.absent(),
            Value<String> date = const Value.absent(),
            Value<int> rating = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ReviewsCompanion(
            id: id,
            userId: userId,
            professorId: professorId,
            comment: comment,
            objectivity: objectivity,
            loyalty: loyalty,
            professionalism: professionalism,
            harshness: harshness,
            date: date,
            rating: rating,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required int userId,
            required int professorId,
            required String comment,
            required double objectivity,
            required double loyalty,
            required double professionalism,
            required double harshness,
            required String date,
            required int rating,
            Value<int> rowid = const Value.absent(),
          }) =>
              ReviewsCompanion.insert(
            id: id,
            userId: userId,
            professorId: professorId,
            comment: comment,
            objectivity: objectivity,
            loyalty: loyalty,
            professionalism: professionalism,
            harshness: harshness,
            date: date,
            rating: rating,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ReviewsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ReviewsTable,
    Review,
    $$ReviewsTableFilterComposer,
    $$ReviewsTableOrderingComposer,
    $$ReviewsTableCreateCompanionBuilder,
    $$ReviewsTableUpdateCompanionBuilder,
    (Review, BaseReferences<_$AppDatabase, $ReviewsTable, Review>),
    Review,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProfessorsTableTableManager get professors =>
      $$ProfessorsTableTableManager(_db, _db.professors);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$ReviewsTableTableManager get reviews =>
      $$ReviewsTableTableManager(_db, _db.reviews);
}
