// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ProfessorsTable extends Professors with TableInfo<$ProfessorsTable, Professor> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProfessorsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id =
      GeneratedColumn<String>('id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name =
      GeneratedColumn<String>('name', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _smallAvatarMeta = VerificationMeta('smallAvatar');
  @override
  late final GeneratedColumn<Uint8List> smallAvatar = GeneratedColumn<Uint8List>('small_avatar', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _avatarMeta = VerificationMeta('avatar');
  @override
  late final GeneratedColumn<Uint8List> avatar =
      GeneratedColumn<Uint8List>('avatar', aliasedName, false, type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _reviewsCountMeta = VerificationMeta('reviewsCount');
  @override
  late final GeneratedColumn<int> reviewsCount =
      GeneratedColumn<int>('reviews_count', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ratingMeta = VerificationMeta('rating');
  @override
  late final GeneratedColumn<double> rating =
      GeneratedColumn<double>('rating', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _objectivityMeta = VerificationMeta('objectivity');
  @override
  late final GeneratedColumn<double> objectivity =
      GeneratedColumn<double>('objectivity', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _loyaltyMeta = VerificationMeta('loyalty');
  @override
  late final GeneratedColumn<double> loyalty =
      GeneratedColumn<double>('loyalty', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _professionalismMeta = VerificationMeta('professionalism');
  @override
  late final GeneratedColumn<double> professionalism = GeneratedColumn<double>('professionalism', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _harshnessMeta = VerificationMeta('harshness');
  @override
  late final GeneratedColumn<double> harshness =
      GeneratedColumn<double>('harshness', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, smallAvatar, avatar, reviewsCount, rating, objectivity, loyalty, professionalism, harshness];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'professors';
  @override
  VerificationContext validateIntegrity(Insertable<Professor> instance, {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(_nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('small_avatar')) {
      context.handle(_smallAvatarMeta, smallAvatar.isAcceptableOrUnknown(data['small_avatar']!, _smallAvatarMeta));
    } else if (isInserting) {
      context.missing(_smallAvatarMeta);
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta, avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta));
    } else if (isInserting) {
      context.missing(_avatarMeta);
    }
    if (data.containsKey('reviews_count')) {
      context.handle(_reviewsCountMeta, reviewsCount.isAcceptableOrUnknown(data['reviews_count']!, _reviewsCountMeta));
    } else if (isInserting) {
      context.missing(_reviewsCountMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta, rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('objectivity')) {
      context.handle(_objectivityMeta, objectivity.isAcceptableOrUnknown(data['objectivity']!, _objectivityMeta));
    } else if (isInserting) {
      context.missing(_objectivityMeta);
    }
    if (data.containsKey('loyalty')) {
      context.handle(_loyaltyMeta, loyalty.isAcceptableOrUnknown(data['loyalty']!, _loyaltyMeta));
    } else if (isInserting) {
      context.missing(_loyaltyMeta);
    }
    if (data.containsKey('professionalism')) {
      context.handle(
          _professionalismMeta, professionalism.isAcceptableOrUnknown(data['professionalism']!, _professionalismMeta));
    } else if (isInserting) {
      context.missing(_professionalismMeta);
    }
    if (data.containsKey('harshness')) {
      context.handle(_harshnessMeta, harshness.isAcceptableOrUnknown(data['harshness']!, _harshnessMeta));
    } else if (isInserting) {
      context.missing(_harshnessMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Professor map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Professor(
      id: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      avatar: attachedDatabase.typeMapping.read(DriftSqlType.blob, data['${effectivePrefix}avatar'])!,
      smallAvatar: attachedDatabase.typeMapping.read(DriftSqlType.blob, data['${effectivePrefix}small_avatar'])!,
      rating: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}rating'])!,
      reviewsCount: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}reviews_count'])!,
      objectivity: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}objectivity'])!,
      loyalty: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}loyalty'])!,
      professionalism:
          attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}professionalism'])!,
      harshness: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}harshness'])!,
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
  final Value<Uint8List> smallAvatar;
  final Value<Uint8List> avatar;
  final Value<int> reviewsCount;
  final Value<double> rating;
  final Value<double> objectivity;
  final Value<double> loyalty;
  final Value<double> professionalism;
  final Value<double> harshness;
  final Value<int> rowid;
  const ProfessorsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.smallAvatar = const Value.absent(),
    this.avatar = const Value.absent(),
    this.reviewsCount = const Value.absent(),
    this.rating = const Value.absent(),
    this.objectivity = const Value.absent(),
    this.loyalty = const Value.absent(),
    this.professionalism = const Value.absent(),
    this.harshness = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProfessorsCompanion.insert({
    required String id,
    required String name,
    required Uint8List smallAvatar,
    required Uint8List avatar,
    required int reviewsCount,
    required double rating,
    required double objectivity,
    required double loyalty,
    required double professionalism,
    required double harshness,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        smallAvatar = Value(smallAvatar),
        avatar = Value(avatar),
        reviewsCount = Value(reviewsCount),
        rating = Value(rating),
        objectivity = Value(objectivity),
        loyalty = Value(loyalty),
        professionalism = Value(professionalism),
        harshness = Value(harshness);
  static Insertable<Professor> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<Uint8List>? smallAvatar,
    Expression<Uint8List>? avatar,
    Expression<int>? reviewsCount,
    Expression<double>? rating,
    Expression<double>? objectivity,
    Expression<double>? loyalty,
    Expression<double>? professionalism,
    Expression<double>? harshness,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (smallAvatar != null) 'small_avatar': smallAvatar,
      if (avatar != null) 'avatar': avatar,
      if (reviewsCount != null) 'reviews_count': reviewsCount,
      if (rating != null) 'rating': rating,
      if (objectivity != null) 'objectivity': objectivity,
      if (loyalty != null) 'loyalty': loyalty,
      if (professionalism != null) 'professionalism': professionalism,
      if (harshness != null) 'harshness': harshness,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProfessorsCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<Uint8List>? smallAvatar,
      Value<Uint8List>? avatar,
      Value<int>? reviewsCount,
      Value<double>? rating,
      Value<double>? objectivity,
      Value<double>? loyalty,
      Value<double>? professionalism,
      Value<double>? harshness,
      Value<int>? rowid}) {
    return ProfessorsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      smallAvatar: smallAvatar ?? this.smallAvatar,
      avatar: avatar ?? this.avatar,
      reviewsCount: reviewsCount ?? this.reviewsCount,
      rating: rating ?? this.rating,
      objectivity: objectivity ?? this.objectivity,
      loyalty: loyalty ?? this.loyalty,
      professionalism: professionalism ?? this.professionalism,
      harshness: harshness ?? this.harshness,
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
    if (smallAvatar.present) {
      map['small_avatar'] = Variable<Uint8List>(smallAvatar.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<Uint8List>(avatar.value);
    }
    if (reviewsCount.present) {
      map['reviews_count'] = Variable<int>(reviewsCount.value);
    }
    if (rating.present) {
      map['rating'] = Variable<double>(rating.value);
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
          ..write('smallAvatar: $smallAvatar, ')
          ..write('avatar: $avatar, ')
          ..write('reviewsCount: $reviewsCount, ')
          ..write('rating: $rating, ')
          ..write('objectivity: $objectivity, ')
          ..write('loyalty: $loyalty, ')
          ..write('professionalism: $professionalism, ')
          ..write('harshness: $harshness, ')
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
  static const VerificationMeta _idMeta = VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id =
      GeneratedColumn<int>('id', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name =
      GeneratedColumn<String>('name', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _avatarMeta = VerificationMeta('avatar');
  @override
  late final GeneratedColumn<Uint8List> avatar =
      GeneratedColumn<Uint8List>('avatar', aliasedName, false, type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _ratingMeta = VerificationMeta('rating');
  @override
  late final GeneratedColumn<int> rating = GeneratedColumn<int>('rating', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false, defaultValue: const Constant(0));
  static const VerificationMeta _groupMeta = VerificationMeta('group');
  @override
  late final GeneratedColumn<String> group =
      GeneratedColumn<String>('group', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, avatar, rating, group];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance, {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(_nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta, avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta));
    } else if (isInserting) {
      context.missing(_avatarMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta, rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    }
    if (data.containsKey('group')) {
      context.handle(_groupMeta, group.isAcceptableOrUnknown(data['group']!, _groupMeta));
    } else if (isInserting) {
      context.missing(_groupMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      avatar: attachedDatabase.typeMapping.read(DriftSqlType.blob, data['${effectivePrefix}avatar'])!,
      rating: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}rating'])!,
      group: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}group'])!,
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
  final Value<String> group;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.avatar = const Value.absent(),
    this.rating = const Value.absent(),
    this.group = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required Uint8List avatar,
    this.rating = const Value.absent(),
    required String group,
  })  : name = Value(name),
        avatar = Value(avatar),
        group = Value(group);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<Uint8List>? avatar,
    Expression<int>? rating,
    Expression<String>? group,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (avatar != null) 'avatar': avatar,
      if (rating != null) 'rating': rating,
      if (group != null) 'group': group,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<Uint8List>? avatar, Value<int>? rating, Value<String>? group}) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
      rating: rating ?? this.rating,
      group: group ?? this.group,
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
    if (group.present) {
      map['group'] = Variable<String>(group.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('avatar: $avatar, ')
          ..write('rating: $rating, ')
          ..write('group: $group')
          ..write(')'))
        .toString();
  }
}

class $ReviewsTable extends Reviews with TableInfo<$ReviewsTable, Review> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReviewsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id =
      GeneratedColumn<String>('id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId =
      GeneratedColumn<int>('user_id', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _professorIdMeta = VerificationMeta('professorId');
  @override
  late final GeneratedColumn<String> professorId = GeneratedColumn<String>('professor_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _commentMeta = VerificationMeta('comment');
  @override
  late final GeneratedColumn<String> comment =
      GeneratedColumn<String>('comment', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _objectivityMeta = VerificationMeta('objectivity');
  @override
  late final GeneratedColumn<double> objectivity =
      GeneratedColumn<double>('objectivity', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _loyaltyMeta = VerificationMeta('loyalty');
  @override
  late final GeneratedColumn<double> loyalty =
      GeneratedColumn<double>('loyalty', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _professionalismMeta = VerificationMeta('professionalism');
  @override
  late final GeneratedColumn<double> professionalism = GeneratedColumn<double>('professionalism', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _harshnessMeta = VerificationMeta('harshness');
  @override
  late final GeneratedColumn<double> harshness =
      GeneratedColumn<double>('harshness', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date =
      GeneratedColumn<String>('date', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _likesMeta = VerificationMeta('likes');
  @override
  late final GeneratedColumn<int> likes =
      GeneratedColumn<int>('likes', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dislikesMeta = VerificationMeta('dislikes');
  @override
  late final GeneratedColumn<int> dislikes =
      GeneratedColumn<int>('dislikes', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, professorId, comment, objectivity, loyalty, professionalism, harshness, date, likes, dislikes];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reviews';
  @override
  VerificationContext validateIntegrity(Insertable<Review> instance, {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta, userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('professor_id')) {
      context.handle(_professorIdMeta, professorId.isAcceptableOrUnknown(data['professor_id']!, _professorIdMeta));
    } else if (isInserting) {
      context.missing(_professorIdMeta);
    }
    if (data.containsKey('comment')) {
      context.handle(_commentMeta, comment.isAcceptableOrUnknown(data['comment']!, _commentMeta));
    } else if (isInserting) {
      context.missing(_commentMeta);
    }
    if (data.containsKey('objectivity')) {
      context.handle(_objectivityMeta, objectivity.isAcceptableOrUnknown(data['objectivity']!, _objectivityMeta));
    } else if (isInserting) {
      context.missing(_objectivityMeta);
    }
    if (data.containsKey('loyalty')) {
      context.handle(_loyaltyMeta, loyalty.isAcceptableOrUnknown(data['loyalty']!, _loyaltyMeta));
    } else if (isInserting) {
      context.missing(_loyaltyMeta);
    }
    if (data.containsKey('professionalism')) {
      context.handle(
          _professionalismMeta, professionalism.isAcceptableOrUnknown(data['professionalism']!, _professionalismMeta));
    } else if (isInserting) {
      context.missing(_professionalismMeta);
    }
    if (data.containsKey('harshness')) {
      context.handle(_harshnessMeta, harshness.isAcceptableOrUnknown(data['harshness']!, _harshnessMeta));
    } else if (isInserting) {
      context.missing(_harshnessMeta);
    }
    if (data.containsKey('date')) {
      context.handle(_dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('likes')) {
      context.handle(_likesMeta, likes.isAcceptableOrUnknown(data['likes']!, _likesMeta));
    } else if (isInserting) {
      context.missing(_likesMeta);
    }
    if (data.containsKey('dislikes')) {
      context.handle(_dislikesMeta, dislikes.isAcceptableOrUnknown(data['dislikes']!, _dislikesMeta));
    } else if (isInserting) {
      context.missing(_dislikesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Review map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Review(
      id: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      comment: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}comment'])!,
      objectivity: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}objectivity'])!,
      loyalty: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}loyalty'])!,
      professionalism:
          attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}professionalism'])!,
      harshness: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}harshness'])!,
      date: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      professorId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}professor_id'])!,
      likes: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}likes'])!,
      dislikes: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}dislikes'])!,
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
  final Value<String> professorId;
  final Value<String> comment;
  final Value<double> objectivity;
  final Value<double> loyalty;
  final Value<double> professionalism;
  final Value<double> harshness;
  final Value<String> date;
  final Value<int> likes;
  final Value<int> dislikes;
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
    this.likes = const Value.absent(),
    this.dislikes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ReviewsCompanion.insert({
    required String id,
    required int userId,
    required String professorId,
    required String comment,
    required double objectivity,
    required double loyalty,
    required double professionalism,
    required double harshness,
    required String date,
    required int likes,
    required int dislikes,
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
        likes = Value(likes),
        dislikes = Value(dislikes);
  static Insertable<Review> custom({
    Expression<String>? id,
    Expression<int>? userId,
    Expression<String>? professorId,
    Expression<String>? comment,
    Expression<double>? objectivity,
    Expression<double>? loyalty,
    Expression<double>? professionalism,
    Expression<double>? harshness,
    Expression<String>? date,
    Expression<int>? likes,
    Expression<int>? dislikes,
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
      if (likes != null) 'likes': likes,
      if (dislikes != null) 'dislikes': dislikes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ReviewsCompanion copyWith(
      {Value<String>? id,
      Value<int>? userId,
      Value<String>? professorId,
      Value<String>? comment,
      Value<double>? objectivity,
      Value<double>? loyalty,
      Value<double>? professionalism,
      Value<double>? harshness,
      Value<String>? date,
      Value<int>? likes,
      Value<int>? dislikes,
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
      likes: likes ?? this.likes,
      dislikes: dislikes ?? this.dislikes,
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
      map['professor_id'] = Variable<String>(professorId.value);
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
    if (likes.present) {
      map['likes'] = Variable<int>(likes.value);
    }
    if (dislikes.present) {
      map['dislikes'] = Variable<int>(dislikes.value);
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
          ..write('likes: $likes, ')
          ..write('dislikes: $dislikes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RejectedReviewsTable extends RejectedReviews with TableInfo<$RejectedReviewsTable, Review> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RejectedReviewsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id =
      GeneratedColumn<String>('id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId =
      GeneratedColumn<int>('user_id', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _professorIdMeta = VerificationMeta('professorId');
  @override
  late final GeneratedColumn<String> professorId = GeneratedColumn<String>('professor_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _commentMeta = VerificationMeta('comment');
  @override
  late final GeneratedColumn<String> comment =
      GeneratedColumn<String>('comment', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _objectivityMeta = VerificationMeta('objectivity');
  @override
  late final GeneratedColumn<double> objectivity =
      GeneratedColumn<double>('objectivity', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _loyaltyMeta = VerificationMeta('loyalty');
  @override
  late final GeneratedColumn<double> loyalty =
      GeneratedColumn<double>('loyalty', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _professionalismMeta = VerificationMeta('professionalism');
  @override
  late final GeneratedColumn<double> professionalism = GeneratedColumn<double>('professionalism', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _harshnessMeta = VerificationMeta('harshness');
  @override
  late final GeneratedColumn<double> harshness =
      GeneratedColumn<double>('harshness', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date =
      GeneratedColumn<String>('date', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _likesMeta = VerificationMeta('likes');
  @override
  late final GeneratedColumn<int> likes =
      GeneratedColumn<int>('likes', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dislikesMeta = VerificationMeta('dislikes');
  @override
  late final GeneratedColumn<int> dislikes =
      GeneratedColumn<int>('dislikes', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, professorId, comment, objectivity, loyalty, professionalism, harshness, date, likes, dislikes];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'rejected_reviews';
  @override
  VerificationContext validateIntegrity(Insertable<Review> instance, {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta, userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('professor_id')) {
      context.handle(_professorIdMeta, professorId.isAcceptableOrUnknown(data['professor_id']!, _professorIdMeta));
    } else if (isInserting) {
      context.missing(_professorIdMeta);
    }
    if (data.containsKey('comment')) {
      context.handle(_commentMeta, comment.isAcceptableOrUnknown(data['comment']!, _commentMeta));
    } else if (isInserting) {
      context.missing(_commentMeta);
    }
    if (data.containsKey('objectivity')) {
      context.handle(_objectivityMeta, objectivity.isAcceptableOrUnknown(data['objectivity']!, _objectivityMeta));
    } else if (isInserting) {
      context.missing(_objectivityMeta);
    }
    if (data.containsKey('loyalty')) {
      context.handle(_loyaltyMeta, loyalty.isAcceptableOrUnknown(data['loyalty']!, _loyaltyMeta));
    } else if (isInserting) {
      context.missing(_loyaltyMeta);
    }
    if (data.containsKey('professionalism')) {
      context.handle(
          _professionalismMeta, professionalism.isAcceptableOrUnknown(data['professionalism']!, _professionalismMeta));
    } else if (isInserting) {
      context.missing(_professionalismMeta);
    }
    if (data.containsKey('harshness')) {
      context.handle(_harshnessMeta, harshness.isAcceptableOrUnknown(data['harshness']!, _harshnessMeta));
    } else if (isInserting) {
      context.missing(_harshnessMeta);
    }
    if (data.containsKey('date')) {
      context.handle(_dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('likes')) {
      context.handle(_likesMeta, likes.isAcceptableOrUnknown(data['likes']!, _likesMeta));
    } else if (isInserting) {
      context.missing(_likesMeta);
    }
    if (data.containsKey('dislikes')) {
      context.handle(_dislikesMeta, dislikes.isAcceptableOrUnknown(data['dislikes']!, _dislikesMeta));
    } else if (isInserting) {
      context.missing(_dislikesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Review map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Review(
      id: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      comment: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}comment'])!,
      objectivity: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}objectivity'])!,
      loyalty: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}loyalty'])!,
      professionalism:
          attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}professionalism'])!,
      harshness: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}harshness'])!,
      date: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      professorId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}professor_id'])!,
      likes: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}likes'])!,
      dislikes: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}dislikes'])!,
    );
  }

  @override
  $RejectedReviewsTable createAlias(String alias) {
    return $RejectedReviewsTable(attachedDatabase, alias);
  }
}

class RejectedReviewsCompanion extends UpdateCompanion<Review> {
  final Value<String> id;
  final Value<int> userId;
  final Value<String> professorId;
  final Value<String> comment;
  final Value<double> objectivity;
  final Value<double> loyalty;
  final Value<double> professionalism;
  final Value<double> harshness;
  final Value<String> date;
  final Value<int> likes;
  final Value<int> dislikes;
  final Value<int> rowid;
  const RejectedReviewsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.professorId = const Value.absent(),
    this.comment = const Value.absent(),
    this.objectivity = const Value.absent(),
    this.loyalty = const Value.absent(),
    this.professionalism = const Value.absent(),
    this.harshness = const Value.absent(),
    this.date = const Value.absent(),
    this.likes = const Value.absent(),
    this.dislikes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RejectedReviewsCompanion.insert({
    required String id,
    required int userId,
    required String professorId,
    required String comment,
    required double objectivity,
    required double loyalty,
    required double professionalism,
    required double harshness,
    required String date,
    required int likes,
    required int dislikes,
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
        likes = Value(likes),
        dislikes = Value(dislikes);
  static Insertable<Review> custom({
    Expression<String>? id,
    Expression<int>? userId,
    Expression<String>? professorId,
    Expression<String>? comment,
    Expression<double>? objectivity,
    Expression<double>? loyalty,
    Expression<double>? professionalism,
    Expression<double>? harshness,
    Expression<String>? date,
    Expression<int>? likes,
    Expression<int>? dislikes,
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
      if (likes != null) 'likes': likes,
      if (dislikes != null) 'dislikes': dislikes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RejectedReviewsCompanion copyWith(
      {Value<String>? id,
      Value<int>? userId,
      Value<String>? professorId,
      Value<String>? comment,
      Value<double>? objectivity,
      Value<double>? loyalty,
      Value<double>? professionalism,
      Value<double>? harshness,
      Value<String>? date,
      Value<int>? likes,
      Value<int>? dislikes,
      Value<int>? rowid}) {
    return RejectedReviewsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      professorId: professorId ?? this.professorId,
      comment: comment ?? this.comment,
      objectivity: objectivity ?? this.objectivity,
      loyalty: loyalty ?? this.loyalty,
      professionalism: professionalism ?? this.professionalism,
      harshness: harshness ?? this.harshness,
      date: date ?? this.date,
      likes: likes ?? this.likes,
      dislikes: dislikes ?? this.dislikes,
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
      map['professor_id'] = Variable<String>(professorId.value);
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
    if (likes.present) {
      map['likes'] = Variable<int>(likes.value);
    }
    if (dislikes.present) {
      map['dislikes'] = Variable<int>(dislikes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RejectedReviewsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('professorId: $professorId, ')
          ..write('comment: $comment, ')
          ..write('objectivity: $objectivity, ')
          ..write('loyalty: $loyalty, ')
          ..write('professionalism: $professionalism, ')
          ..write('harshness: $harshness, ')
          ..write('date: $date, ')
          ..write('likes: $likes, ')
          ..write('dislikes: $dislikes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ReactionsTable extends Reactions with TableInfo<$ReactionsTable, Reaction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReactionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id =
      GeneratedColumn<String>('id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId =
      GeneratedColumn<int>('user_id', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _professorIdMeta = VerificationMeta('professorId');
  @override
  late final GeneratedColumn<String> professorId = GeneratedColumn<String>('professor_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _reviewIdMeta = VerificationMeta('reviewId');
  @override
  late final GeneratedColumn<String> reviewId =
      GeneratedColumn<String>('review_id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _likedMeta = VerificationMeta('liked');
  @override
  late final GeneratedColumn<bool> liked = GeneratedColumn<bool>('liked', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("liked" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [id, userId, professorId, reviewId, liked];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reactions';
  @override
  VerificationContext validateIntegrity(Insertable<Reaction> instance, {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta, userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('professor_id')) {
      context.handle(_professorIdMeta, professorId.isAcceptableOrUnknown(data['professor_id']!, _professorIdMeta));
    } else if (isInserting) {
      context.missing(_professorIdMeta);
    }
    if (data.containsKey('review_id')) {
      context.handle(_reviewIdMeta, reviewId.isAcceptableOrUnknown(data['review_id']!, _reviewIdMeta));
    } else if (isInserting) {
      context.missing(_reviewIdMeta);
    }
    if (data.containsKey('liked')) {
      context.handle(_likedMeta, liked.isAcceptableOrUnknown(data['liked']!, _likedMeta));
    } else if (isInserting) {
      context.missing(_likedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Reaction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Reaction(
      id: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      professorId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}professor_id'])!,
      reviewId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}review_id'])!,
    );
  }

  @override
  $ReactionsTable createAlias(String alias) {
    return $ReactionsTable(attachedDatabase, alias);
  }
}

class ReactionsCompanion extends UpdateCompanion<Reaction> {
  final Value<String> id;
  final Value<int> userId;
  final Value<String> professorId;
  final Value<String> reviewId;
  final Value<bool> liked;
  final Value<int> rowid;
  const ReactionsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.professorId = const Value.absent(),
    this.reviewId = const Value.absent(),
    this.liked = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ReactionsCompanion.insert({
    required String id,
    required int userId,
    required String professorId,
    required String reviewId,
    required bool liked,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        professorId = Value(professorId),
        reviewId = Value(reviewId),
        liked = Value(liked);
  static Insertable<Reaction> custom({
    Expression<String>? id,
    Expression<int>? userId,
    Expression<String>? professorId,
    Expression<String>? reviewId,
    Expression<bool>? liked,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (professorId != null) 'professor_id': professorId,
      if (reviewId != null) 'review_id': reviewId,
      if (liked != null) 'liked': liked,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ReactionsCompanion copyWith(
      {Value<String>? id,
      Value<int>? userId,
      Value<String>? professorId,
      Value<String>? reviewId,
      Value<bool>? liked,
      Value<int>? rowid}) {
    return ReactionsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      professorId: professorId ?? this.professorId,
      reviewId: reviewId ?? this.reviewId,
      liked: liked ?? this.liked,
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
      map['professor_id'] = Variable<String>(professorId.value);
    }
    if (reviewId.present) {
      map['review_id'] = Variable<String>(reviewId.value);
    }
    if (liked.present) {
      map['liked'] = Variable<bool>(liked.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReactionsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('professorId: $professorId, ')
          ..write('reviewId: $reviewId, ')
          ..write('liked: $liked, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GroupsTable extends Groups with TableInfo<$GroupsTable, Group> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GroupsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id =
      GeneratedColumn<String>('id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numberMeta = VerificationMeta('number');
  @override
  late final GeneratedColumn<String> number =
      GeneratedColumn<String>('number', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _professorIdMeta = VerificationMeta('professorId');
  @override
  late final GeneratedColumn<String> professorId = GeneratedColumn<String>('professor_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, number, professorId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'groups';
  @override
  VerificationContext validateIntegrity(Insertable<Group> instance, {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta, number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('professor_id')) {
      context.handle(_professorIdMeta, professorId.isAcceptableOrUnknown(data['professor_id']!, _professorIdMeta));
    } else if (isInserting) {
      context.missing(_professorIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Group map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Group(
      id: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      number: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}number'])!,
      professorId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}professor_id'])!,
    );
  }

  @override
  $GroupsTable createAlias(String alias) {
    return $GroupsTable(attachedDatabase, alias);
  }
}

class GroupsCompanion extends UpdateCompanion<Group> {
  final Value<String> id;
  final Value<String> number;
  final Value<String> professorId;
  final Value<int> rowid;
  const GroupsCompanion({
    this.id = const Value.absent(),
    this.number = const Value.absent(),
    this.professorId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GroupsCompanion.insert({
    required String id,
    required String number,
    required String professorId,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        number = Value(number),
        professorId = Value(professorId);
  static Insertable<Group> custom({
    Expression<String>? id,
    Expression<String>? number,
    Expression<String>? professorId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (number != null) 'number': number,
      if (professorId != null) 'professor_id': professorId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GroupsCompanion copyWith({Value<String>? id, Value<String>? number, Value<String>? professorId, Value<int>? rowid}) {
    return GroupsCompanion(
      id: id ?? this.id,
      number: number ?? this.number,
      professorId: professorId ?? this.professorId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (professorId.present) {
      map['professor_id'] = Variable<String>(professorId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GroupsCompanion(')
          ..write('id: $id, ')
          ..write('number: $number, ')
          ..write('professorId: $professorId, ')
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
  late final $RejectedReviewsTable rejectedReviews = $RejectedReviewsTable(this);
  late final $ReactionsTable reactions = $ReactionsTable(this);
  late final $GroupsTable groups = $GroupsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables => allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [professors, users, reviews, rejectedReviews, reactions, groups];
}

typedef $$ProfessorsTableCreateCompanionBuilder = ProfessorsCompanion Function({
  required String id,
  required String name,
  required Uint8List smallAvatar,
  required Uint8List avatar,
  required int reviewsCount,
  required double rating,
  required double objectivity,
  required double loyalty,
  required double professionalism,
  required double harshness,
  Value<int> rowid,
});
typedef $$ProfessorsTableUpdateCompanionBuilder = ProfessorsCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<Uint8List> smallAvatar,
  Value<Uint8List> avatar,
  Value<int> reviewsCount,
  Value<double> rating,
  Value<double> objectivity,
  Value<double> loyalty,
  Value<double> professionalism,
  Value<double> harshness,
  Value<int> rowid,
});

class $$ProfessorsTableFilterComposer extends FilterComposer<_$AppDatabase, $ProfessorsTable> {
  $$ProfessorsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<Uint8List> get smallAvatar => $state.composableBuilder(
      column: $state.table.smallAvatar,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<Uint8List> get avatar => $state.composableBuilder(
      column: $state.table.avatar,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get reviewsCount => $state.composableBuilder(
      column: $state.table.reviewsCount,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get rating => $state.composableBuilder(
      column: $state.table.rating,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get objectivity => $state.composableBuilder(
      column: $state.table.objectivity,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get loyalty => $state.composableBuilder(
      column: $state.table.loyalty,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get professionalism => $state.composableBuilder(
      column: $state.table.professionalism,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get harshness => $state.composableBuilder(
      column: $state.table.harshness,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ProfessorsTableOrderingComposer extends OrderingComposer<_$AppDatabase, $ProfessorsTable> {
  $$ProfessorsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id, builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<Uint8List> get smallAvatar => $state.composableBuilder(
      column: $state.table.smallAvatar,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<Uint8List> get avatar => $state.composableBuilder(
      column: $state.table.avatar,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get reviewsCount => $state.composableBuilder(
      column: $state.table.reviewsCount,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get rating => $state.composableBuilder(
      column: $state.table.rating,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get objectivity => $state.composableBuilder(
      column: $state.table.objectivity,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get loyalty => $state.composableBuilder(
      column: $state.table.loyalty,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get professionalism => $state.composableBuilder(
      column: $state.table.professionalism,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get harshness => $state.composableBuilder(
      column: $state.table.harshness,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));
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
          filteringComposer: $$ProfessorsTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$ProfessorsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<Uint8List> smallAvatar = const Value.absent(),
            Value<Uint8List> avatar = const Value.absent(),
            Value<int> reviewsCount = const Value.absent(),
            Value<double> rating = const Value.absent(),
            Value<double> objectivity = const Value.absent(),
            Value<double> loyalty = const Value.absent(),
            Value<double> professionalism = const Value.absent(),
            Value<double> harshness = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfessorsCompanion(
            id: id,
            name: name,
            smallAvatar: smallAvatar,
            avatar: avatar,
            reviewsCount: reviewsCount,
            rating: rating,
            objectivity: objectivity,
            loyalty: loyalty,
            professionalism: professionalism,
            harshness: harshness,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required Uint8List smallAvatar,
            required Uint8List avatar,
            required int reviewsCount,
            required double rating,
            required double objectivity,
            required double loyalty,
            required double professionalism,
            required double harshness,
            Value<int> rowid = const Value.absent(),
          }) =>
              ProfessorsCompanion.insert(
            id: id,
            name: name,
            smallAvatar: smallAvatar,
            avatar: avatar,
            reviewsCount: reviewsCount,
            rating: rating,
            objectivity: objectivity,
            loyalty: loyalty,
            professionalism: professionalism,
            harshness: harshness,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), BaseReferences(db, table, e))).toList(),
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
  required String group,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<Uint8List> avatar,
  Value<int> rating,
  Value<String> group,
});

class $$UsersTableFilterComposer extends FilterComposer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<Uint8List> get avatar => $state.composableBuilder(
      column: $state.table.avatar,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get rating => $state.composableBuilder(
      column: $state.table.rating,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get group => $state.composableBuilder(
      column: $state.table.group, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UsersTableOrderingComposer extends OrderingComposer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id, builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<Uint8List> get avatar => $state.composableBuilder(
      column: $state.table.avatar,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get rating => $state.composableBuilder(
      column: $state.table.rating,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get group => $state.composableBuilder(
      column: $state.table.group,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));
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
          filteringComposer: $$UsersTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$UsersTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<Uint8List> avatar = const Value.absent(),
            Value<int> rating = const Value.absent(),
            Value<String> group = const Value.absent(),
          }) =>
              UsersCompanion(
            id: id,
            name: name,
            avatar: avatar,
            rating: rating,
            group: group,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required Uint8List avatar,
            Value<int> rating = const Value.absent(),
            required String group,
          }) =>
              UsersCompanion.insert(
            id: id,
            name: name,
            avatar: avatar,
            rating: rating,
            group: group,
          ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), BaseReferences(db, table, e))).toList(),
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
  required String professorId,
  required String comment,
  required double objectivity,
  required double loyalty,
  required double professionalism,
  required double harshness,
  required String date,
  required int likes,
  required int dislikes,
  Value<int> rowid,
});
typedef $$ReviewsTableUpdateCompanionBuilder = ReviewsCompanion Function({
  Value<String> id,
  Value<int> userId,
  Value<String> professorId,
  Value<String> comment,
  Value<double> objectivity,
  Value<double> loyalty,
  Value<double> professionalism,
  Value<double> harshness,
  Value<String> date,
  Value<int> likes,
  Value<int> dislikes,
  Value<int> rowid,
});

class $$ReviewsTableFilterComposer extends FilterComposer<_$AppDatabase, $ReviewsTable> {
  $$ReviewsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get professorId => $state.composableBuilder(
      column: $state.table.professorId,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get objectivity => $state.composableBuilder(
      column: $state.table.objectivity,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get loyalty => $state.composableBuilder(
      column: $state.table.loyalty,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get professionalism => $state.composableBuilder(
      column: $state.table.professionalism,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get harshness => $state.composableBuilder(
      column: $state.table.harshness,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get date => $state.composableBuilder(
      column: $state.table.date, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get likes => $state.composableBuilder(
      column: $state.table.likes, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get dislikes => $state.composableBuilder(
      column: $state.table.dislikes,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ReviewsTableOrderingComposer extends OrderingComposer<_$AppDatabase, $ReviewsTable> {
  $$ReviewsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id, builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get professorId => $state.composableBuilder(
      column: $state.table.professorId,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get objectivity => $state.composableBuilder(
      column: $state.table.objectivity,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get loyalty => $state.composableBuilder(
      column: $state.table.loyalty,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get professionalism => $state.composableBuilder(
      column: $state.table.professionalism,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get harshness => $state.composableBuilder(
      column: $state.table.harshness,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get likes => $state.composableBuilder(
      column: $state.table.likes,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get dislikes => $state.composableBuilder(
      column: $state.table.dislikes,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));
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
          filteringComposer: $$ReviewsTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$ReviewsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<String> professorId = const Value.absent(),
            Value<String> comment = const Value.absent(),
            Value<double> objectivity = const Value.absent(),
            Value<double> loyalty = const Value.absent(),
            Value<double> professionalism = const Value.absent(),
            Value<double> harshness = const Value.absent(),
            Value<String> date = const Value.absent(),
            Value<int> likes = const Value.absent(),
            Value<int> dislikes = const Value.absent(),
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
            likes: likes,
            dislikes: dislikes,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required int userId,
            required String professorId,
            required String comment,
            required double objectivity,
            required double loyalty,
            required double professionalism,
            required double harshness,
            required String date,
            required int likes,
            required int dislikes,
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
            likes: likes,
            dislikes: dislikes,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), BaseReferences(db, table, e))).toList(),
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
typedef $$RejectedReviewsTableCreateCompanionBuilder = RejectedReviewsCompanion Function({
  required String id,
  required int userId,
  required String professorId,
  required String comment,
  required double objectivity,
  required double loyalty,
  required double professionalism,
  required double harshness,
  required String date,
  required int likes,
  required int dislikes,
  Value<int> rowid,
});
typedef $$RejectedReviewsTableUpdateCompanionBuilder = RejectedReviewsCompanion Function({
  Value<String> id,
  Value<int> userId,
  Value<String> professorId,
  Value<String> comment,
  Value<double> objectivity,
  Value<double> loyalty,
  Value<double> professionalism,
  Value<double> harshness,
  Value<String> date,
  Value<int> likes,
  Value<int> dislikes,
  Value<int> rowid,
});

class $$RejectedReviewsTableFilterComposer extends FilterComposer<_$AppDatabase, $RejectedReviewsTable> {
  $$RejectedReviewsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get professorId => $state.composableBuilder(
      column: $state.table.professorId,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get objectivity => $state.composableBuilder(
      column: $state.table.objectivity,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get loyalty => $state.composableBuilder(
      column: $state.table.loyalty,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get professionalism => $state.composableBuilder(
      column: $state.table.professionalism,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get harshness => $state.composableBuilder(
      column: $state.table.harshness,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get date => $state.composableBuilder(
      column: $state.table.date, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get likes => $state.composableBuilder(
      column: $state.table.likes, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get dislikes => $state.composableBuilder(
      column: $state.table.dislikes,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$RejectedReviewsTableOrderingComposer extends OrderingComposer<_$AppDatabase, $RejectedReviewsTable> {
  $$RejectedReviewsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id, builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get professorId => $state.composableBuilder(
      column: $state.table.professorId,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get comment => $state.composableBuilder(
      column: $state.table.comment,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get objectivity => $state.composableBuilder(
      column: $state.table.objectivity,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get loyalty => $state.composableBuilder(
      column: $state.table.loyalty,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get professionalism => $state.composableBuilder(
      column: $state.table.professionalism,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get harshness => $state.composableBuilder(
      column: $state.table.harshness,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get likes => $state.composableBuilder(
      column: $state.table.likes,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get dislikes => $state.composableBuilder(
      column: $state.table.dislikes,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$RejectedReviewsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RejectedReviewsTable,
    Review,
    $$RejectedReviewsTableFilterComposer,
    $$RejectedReviewsTableOrderingComposer,
    $$RejectedReviewsTableCreateCompanionBuilder,
    $$RejectedReviewsTableUpdateCompanionBuilder,
    (Review, BaseReferences<_$AppDatabase, $RejectedReviewsTable, Review>),
    Review,
    PrefetchHooks Function()> {
  $$RejectedReviewsTableTableManager(_$AppDatabase db, $RejectedReviewsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$RejectedReviewsTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$RejectedReviewsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<String> professorId = const Value.absent(),
            Value<String> comment = const Value.absent(),
            Value<double> objectivity = const Value.absent(),
            Value<double> loyalty = const Value.absent(),
            Value<double> professionalism = const Value.absent(),
            Value<double> harshness = const Value.absent(),
            Value<String> date = const Value.absent(),
            Value<int> likes = const Value.absent(),
            Value<int> dislikes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RejectedReviewsCompanion(
            id: id,
            userId: userId,
            professorId: professorId,
            comment: comment,
            objectivity: objectivity,
            loyalty: loyalty,
            professionalism: professionalism,
            harshness: harshness,
            date: date,
            likes: likes,
            dislikes: dislikes,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required int userId,
            required String professorId,
            required String comment,
            required double objectivity,
            required double loyalty,
            required double professionalism,
            required double harshness,
            required String date,
            required int likes,
            required int dislikes,
            Value<int> rowid = const Value.absent(),
          }) =>
              RejectedReviewsCompanion.insert(
            id: id,
            userId: userId,
            professorId: professorId,
            comment: comment,
            objectivity: objectivity,
            loyalty: loyalty,
            professionalism: professionalism,
            harshness: harshness,
            date: date,
            likes: likes,
            dislikes: dislikes,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), BaseReferences(db, table, e))).toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RejectedReviewsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RejectedReviewsTable,
    Review,
    $$RejectedReviewsTableFilterComposer,
    $$RejectedReviewsTableOrderingComposer,
    $$RejectedReviewsTableCreateCompanionBuilder,
    $$RejectedReviewsTableUpdateCompanionBuilder,
    (Review, BaseReferences<_$AppDatabase, $RejectedReviewsTable, Review>),
    Review,
    PrefetchHooks Function()>;
typedef $$ReactionsTableCreateCompanionBuilder = ReactionsCompanion Function({
  required String id,
  required int userId,
  required String professorId,
  required String reviewId,
  required bool liked,
  Value<int> rowid,
});
typedef $$ReactionsTableUpdateCompanionBuilder = ReactionsCompanion Function({
  Value<String> id,
  Value<int> userId,
  Value<String> professorId,
  Value<String> reviewId,
  Value<bool> liked,
  Value<int> rowid,
});

class $$ReactionsTableFilterComposer extends FilterComposer<_$AppDatabase, $ReactionsTable> {
  $$ReactionsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get professorId => $state.composableBuilder(
      column: $state.table.professorId,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get reviewId => $state.composableBuilder(
      column: $state.table.reviewId,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get liked => $state.composableBuilder(
      column: $state.table.liked, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ReactionsTableOrderingComposer extends OrderingComposer<_$AppDatabase, $ReactionsTable> {
  $$ReactionsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id, builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get professorId => $state.composableBuilder(
      column: $state.table.professorId,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get reviewId => $state.composableBuilder(
      column: $state.table.reviewId,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get liked => $state.composableBuilder(
      column: $state.table.liked,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ReactionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ReactionsTable,
    Reaction,
    $$ReactionsTableFilterComposer,
    $$ReactionsTableOrderingComposer,
    $$ReactionsTableCreateCompanionBuilder,
    $$ReactionsTableUpdateCompanionBuilder,
    (Reaction, BaseReferences<_$AppDatabase, $ReactionsTable, Reaction>),
    Reaction,
    PrefetchHooks Function()> {
  $$ReactionsTableTableManager(_$AppDatabase db, $ReactionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$ReactionsTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$ReactionsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<String> professorId = const Value.absent(),
            Value<String> reviewId = const Value.absent(),
            Value<bool> liked = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ReactionsCompanion(
            id: id,
            userId: userId,
            professorId: professorId,
            reviewId: reviewId,
            liked: liked,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required int userId,
            required String professorId,
            required String reviewId,
            required bool liked,
            Value<int> rowid = const Value.absent(),
          }) =>
              ReactionsCompanion.insert(
            id: id,
            userId: userId,
            professorId: professorId,
            reviewId: reviewId,
            liked: liked,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), BaseReferences(db, table, e))).toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ReactionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ReactionsTable,
    Reaction,
    $$ReactionsTableFilterComposer,
    $$ReactionsTableOrderingComposer,
    $$ReactionsTableCreateCompanionBuilder,
    $$ReactionsTableUpdateCompanionBuilder,
    (Reaction, BaseReferences<_$AppDatabase, $ReactionsTable, Reaction>),
    Reaction,
    PrefetchHooks Function()>;
typedef $$GroupsTableCreateCompanionBuilder = GroupsCompanion Function({
  required String id,
  required String number,
  required String professorId,
  Value<int> rowid,
});
typedef $$GroupsTableUpdateCompanionBuilder = GroupsCompanion Function({
  Value<String> id,
  Value<String> number,
  Value<String> professorId,
  Value<int> rowid,
});

class $$GroupsTableFilterComposer extends FilterComposer<_$AppDatabase, $GroupsTable> {
  $$GroupsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id, builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get number => $state.composableBuilder(
      column: $state.table.number,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get professorId => $state.composableBuilder(
      column: $state.table.professorId,
      builder: (column, joinBuilders) => ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$GroupsTableOrderingComposer extends OrderingComposer<_$AppDatabase, $GroupsTable> {
  $$GroupsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id, builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get number => $state.composableBuilder(
      column: $state.table.number,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get professorId => $state.composableBuilder(
      column: $state.table.professorId,
      builder: (column, joinBuilders) => ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$GroupsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GroupsTable,
    Group,
    $$GroupsTableFilterComposer,
    $$GroupsTableOrderingComposer,
    $$GroupsTableCreateCompanionBuilder,
    $$GroupsTableUpdateCompanionBuilder,
    (Group, BaseReferences<_$AppDatabase, $GroupsTable, Group>),
    Group,
    PrefetchHooks Function()> {
  $$GroupsTableTableManager(_$AppDatabase db, $GroupsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$GroupsTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$GroupsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> number = const Value.absent(),
            Value<String> professorId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              GroupsCompanion(
            id: id,
            number: number,
            professorId: professorId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String number,
            required String professorId,
            Value<int> rowid = const Value.absent(),
          }) =>
              GroupsCompanion.insert(
            id: id,
            number: number,
            professorId: professorId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0.map((e) => (e.readTable(table), BaseReferences(db, table, e))).toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$GroupsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GroupsTable,
    Group,
    $$GroupsTableFilterComposer,
    $$GroupsTableOrderingComposer,
    $$GroupsTableCreateCompanionBuilder,
    $$GroupsTableUpdateCompanionBuilder,
    (Group, BaseReferences<_$AppDatabase, $GroupsTable, Group>),
    Group,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProfessorsTableTableManager get professors => $$ProfessorsTableTableManager(_db, _db.professors);
  $$UsersTableTableManager get users => $$UsersTableTableManager(_db, _db.users);
  $$ReviewsTableTableManager get reviews => $$ReviewsTableTableManager(_db, _db.reviews);
  $$RejectedReviewsTableTableManager get rejectedReviews =>
      $$RejectedReviewsTableTableManager(_db, _db.rejectedReviews);
  $$ReactionsTableTableManager get reactions => $$ReactionsTableTableManager(_db, _db.reactions);
  $$GroupsTableTableManager get groups => $$GroupsTableTableManager(_db, _db.groups);
}
