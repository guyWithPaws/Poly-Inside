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
  static const VerificationMeta _smallAvatarMeta =
      const VerificationMeta('smallAvatar');
  @override
  late final GeneratedColumn<Uint8List> smallAvatar =
      GeneratedColumn<Uint8List>('small_avatar', aliasedName, false,
          type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  @override
  late final GeneratedColumn<Uint8List> avatar = GeneratedColumn<Uint8List>(
      'avatar', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _reviewsCountMeta =
      const VerificationMeta('reviewsCount');
  @override
  late final GeneratedColumn<int> reviewsCount = GeneratedColumn<int>(
      'reviews_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<double> rating = GeneratedColumn<double>(
      'rating', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
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
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        smallAvatar,
        avatar,
        reviewsCount,
        rating,
        objectivity,
        loyalty,
        professionalism,
        harshness
      ];
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
    if (data.containsKey('small_avatar')) {
      context.handle(
          _smallAvatarMeta,
          smallAvatar.isAcceptableOrUnknown(
              data['small_avatar']!, _smallAvatarMeta));
    } else if (isInserting) {
      context.missing(_smallAvatarMeta);
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta,
          avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta));
    } else if (isInserting) {
      context.missing(_avatarMeta);
    }
    if (data.containsKey('reviews_count')) {
      context.handle(
          _reviewsCountMeta,
          reviewsCount.isAcceptableOrUnknown(
              data['reviews_count']!, _reviewsCountMeta));
    } else if (isInserting) {
      context.missing(_reviewsCountMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta,
          rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    } else if (isInserting) {
      context.missing(_ratingMeta);
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
          .read(DriftSqlType.blob, data['${effectivePrefix}avatar'])!,
      smallAvatar: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}small_avatar'])!,
      rating: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}rating'])!,
      reviewsCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}reviews_count'])!,
      objectivity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}objectivity'])!,
      loyalty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}loyalty'])!,
      professionalism: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}professionalism'])!,
      harshness: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}harshness'])!,
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
      defaultValue: const Constant<int>(0));
  static const VerificationMeta _groupMeta = const VerificationMeta('group');
  @override
  late final GeneratedColumn<String> group = GeneratedColumn<String>(
      'group', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, avatar, rating, group];
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
    if (data.containsKey('group')) {
      context.handle(
          _groupMeta, group.isAcceptableOrUnknown(data['group']!, _groupMeta));
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
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      avatar: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}avatar'])!,
      rating: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rating'])!,
      group: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group'])!,
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
      {Value<int>? id,
      Value<String>? name,
      Value<Uint8List>? avatar,
      Value<int>? rating,
      Value<String>? group}) {
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
  late final GeneratedColumn<String> professorId = GeneratedColumn<String>(
      'professor_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
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
  static const VerificationMeta _likesMeta = const VerificationMeta('likes');
  @override
  late final GeneratedColumn<int> likes = GeneratedColumn<int>(
      'likes', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dislikesMeta =
      const VerificationMeta('dislikes');
  @override
  late final GeneratedColumn<int> dislikes = GeneratedColumn<int>(
      'dislikes', aliasedName, false,
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
        likes,
        dislikes
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
    if (data.containsKey('likes')) {
      context.handle(
          _likesMeta, likes.isAcceptableOrUnknown(data['likes']!, _likesMeta));
    } else if (isInserting) {
      context.missing(_likesMeta);
    }
    if (data.containsKey('dislikes')) {
      context.handle(_dislikesMeta,
          dislikes.isAcceptableOrUnknown(data['dislikes']!, _dislikesMeta));
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
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
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
          .read(DriftSqlType.string, data['${effectivePrefix}professor_id'])!,
      likes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}likes'])!,
      dislikes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}dislikes'])!,
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

class $RejectedReviewsTable extends RejectedReviews
    with TableInfo<$RejectedReviewsTable, Review> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RejectedReviewsTable(this.attachedDatabase, [this._alias]);
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
  late final GeneratedColumn<String> professorId = GeneratedColumn<String>(
      'professor_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
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
  static const VerificationMeta _likesMeta = const VerificationMeta('likes');
  @override
  late final GeneratedColumn<int> likes = GeneratedColumn<int>(
      'likes', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dislikesMeta =
      const VerificationMeta('dislikes');
  @override
  late final GeneratedColumn<int> dislikes = GeneratedColumn<int>(
      'dislikes', aliasedName, false,
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
        likes,
        dislikes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'rejected_reviews';
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
    if (data.containsKey('likes')) {
      context.handle(
          _likesMeta, likes.isAcceptableOrUnknown(data['likes']!, _likesMeta));
    } else if (isInserting) {
      context.missing(_likesMeta);
    }
    if (data.containsKey('dislikes')) {
      context.handle(_dislikesMeta,
          dislikes.isAcceptableOrUnknown(data['dislikes']!, _dislikesMeta));
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
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
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
          .read(DriftSqlType.string, data['${effectivePrefix}professor_id'])!,
      likes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}likes'])!,
      dislikes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}dislikes'])!,
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

class $ReactionsTable extends Reactions
    with TableInfo<$ReactionsTable, Reaction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReactionsTable(this.attachedDatabase, [this._alias]);
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
  late final GeneratedColumn<String> professorId = GeneratedColumn<String>(
      'professor_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _reviewIdMeta =
      const VerificationMeta('reviewId');
  @override
  late final GeneratedColumn<String> reviewId = GeneratedColumn<String>(
      'review_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _likedMeta = const VerificationMeta('liked');
  @override
  late final GeneratedColumn<bool> liked = GeneratedColumn<bool>(
      'liked', aliasedName, false,
      type: DriftSqlType.bool, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, professorId, reviewId, liked];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reactions';
  @override
  VerificationContext validateIntegrity(Insertable<Reaction> instance,
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
    if (data.containsKey('review_id')) {
      context.handle(_reviewIdMeta,
          reviewId.isAcceptableOrUnknown(data['review_id']!, _reviewIdMeta));
    } else if (isInserting) {
      context.missing(_reviewIdMeta);
    }
    if (data.containsKey('liked')) {
      context.handle(
          _likedMeta, liked.isAcceptableOrUnknown(data['liked']!, _likedMeta));
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
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      professorId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}professor_id'])!,
      reviewId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}review_id'])!,
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
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
      'number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _professorIdMeta =
      const VerificationMeta('professorId');
  @override
  late final GeneratedColumn<String> professorId = GeneratedColumn<String>(
      'professor_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, number, professorId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'groups';
  @override
  VerificationContext validateIntegrity(Insertable<Group> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('professor_id')) {
      context.handle(
          _professorIdMeta,
          professorId.isAcceptableOrUnknown(
              data['professor_id']!, _professorIdMeta));
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
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}number'])!,
      professorId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}professor_id'])!,
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

  GroupsCompanion copyWith(
      {Value<String>? id,
      Value<String>? number,
      Value<String>? professorId,
      Value<int>? rowid}) {
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
  late final $RejectedReviewsTable rejectedReviews =
      $RejectedReviewsTable(this);
  late final $ReactionsTable reactions = $ReactionsTable(this);
  late final $GroupsTable groups = $GroupsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [professors, users, reviews, rejectedReviews, reactions, groups];
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

class $$ProfessorsTableFilterComposer
    extends Composer<_$AppDatabase, $ProfessorsTable> {
  $$ProfessorsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get smallAvatar => $composableBuilder(
      column: $table.smallAvatar, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get avatar => $composableBuilder(
      column: $table.avatar, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get reviewsCount => $composableBuilder(
      column: $table.reviewsCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get rating => $composableBuilder(
      column: $table.rating, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get objectivity => $composableBuilder(
      column: $table.objectivity, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get loyalty => $composableBuilder(
      column: $table.loyalty, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get professionalism => $composableBuilder(
      column: $table.professionalism,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get harshness => $composableBuilder(
      column: $table.harshness, builder: (column) => ColumnFilters(column));
}

class $$ProfessorsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProfessorsTable> {
  $$ProfessorsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get smallAvatar => $composableBuilder(
      column: $table.smallAvatar, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get avatar => $composableBuilder(
      column: $table.avatar, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get reviewsCount => $composableBuilder(
      column: $table.reviewsCount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get rating => $composableBuilder(
      column: $table.rating, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get objectivity => $composableBuilder(
      column: $table.objectivity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get loyalty => $composableBuilder(
      column: $table.loyalty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get professionalism => $composableBuilder(
      column: $table.professionalism,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get harshness => $composableBuilder(
      column: $table.harshness, builder: (column) => ColumnOrderings(column));
}

class $$ProfessorsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProfessorsTable> {
  $$ProfessorsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<Uint8List> get smallAvatar => $composableBuilder(
      column: $table.smallAvatar, builder: (column) => column);

  GeneratedColumn<Uint8List> get avatar =>
      $composableBuilder(column: $table.avatar, builder: (column) => column);

  GeneratedColumn<int> get reviewsCount => $composableBuilder(
      column: $table.reviewsCount, builder: (column) => column);

  GeneratedColumn<double> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);

  GeneratedColumn<double> get objectivity => $composableBuilder(
      column: $table.objectivity, builder: (column) => column);

  GeneratedColumn<double> get loyalty =>
      $composableBuilder(column: $table.loyalty, builder: (column) => column);

  GeneratedColumn<double> get professionalism => $composableBuilder(
      column: $table.professionalism, builder: (column) => column);

  GeneratedColumn<double> get harshness =>
      $composableBuilder(column: $table.harshness, builder: (column) => column);
}

class $$ProfessorsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProfessorsTable,
    Professor,
    $$ProfessorsTableFilterComposer,
    $$ProfessorsTableOrderingComposer,
    $$ProfessorsTableAnnotationComposer,
    $$ProfessorsTableCreateCompanionBuilder,
    $$ProfessorsTableUpdateCompanionBuilder,
    (Professor, BaseReferences<_$AppDatabase, $ProfessorsTable, Professor>),
    Professor,
    PrefetchHooks Function()> {
  $$ProfessorsTableTableManager(_$AppDatabase db, $ProfessorsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProfessorsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProfessorsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProfessorsTableAnnotationComposer($db: db, $table: table),
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
    $$ProfessorsTableAnnotationComposer,
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

class $$UsersTableFilterComposer extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get avatar => $composableBuilder(
      column: $table.avatar, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get rating => $composableBuilder(
      column: $table.rating, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get group => $composableBuilder(
      column: $table.group, builder: (column) => ColumnFilters(column));
}

class $$UsersTableOrderingComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get avatar => $composableBuilder(
      column: $table.avatar, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get rating => $composableBuilder(
      column: $table.rating, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get group => $composableBuilder(
      column: $table.group, builder: (column) => ColumnOrderings(column));
}

class $$UsersTableAnnotationComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<Uint8List> get avatar =>
      $composableBuilder(column: $table.avatar, builder: (column) => column);

  GeneratedColumn<int> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);

  GeneratedColumn<String> get group =>
      $composableBuilder(column: $table.group, builder: (column) => column);
}

class $$UsersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableAnnotationComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()> {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UsersTableAnnotationComposer($db: db, $table: table),
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
    $$UsersTableAnnotationComposer,
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

class $$ReviewsTableFilterComposer
    extends Composer<_$AppDatabase, $ReviewsTable> {
  $$ReviewsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get professorId => $composableBuilder(
      column: $table.professorId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get comment => $composableBuilder(
      column: $table.comment, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get objectivity => $composableBuilder(
      column: $table.objectivity, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get loyalty => $composableBuilder(
      column: $table.loyalty, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get professionalism => $composableBuilder(
      column: $table.professionalism,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get harshness => $composableBuilder(
      column: $table.harshness, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get likes => $composableBuilder(
      column: $table.likes, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get dislikes => $composableBuilder(
      column: $table.dislikes, builder: (column) => ColumnFilters(column));
}

class $$ReviewsTableOrderingComposer
    extends Composer<_$AppDatabase, $ReviewsTable> {
  $$ReviewsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get professorId => $composableBuilder(
      column: $table.professorId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get comment => $composableBuilder(
      column: $table.comment, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get objectivity => $composableBuilder(
      column: $table.objectivity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get loyalty => $composableBuilder(
      column: $table.loyalty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get professionalism => $composableBuilder(
      column: $table.professionalism,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get harshness => $composableBuilder(
      column: $table.harshness, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get likes => $composableBuilder(
      column: $table.likes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get dislikes => $composableBuilder(
      column: $table.dislikes, builder: (column) => ColumnOrderings(column));
}

class $$ReviewsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReviewsTable> {
  $$ReviewsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get professorId => $composableBuilder(
      column: $table.professorId, builder: (column) => column);

  GeneratedColumn<String> get comment =>
      $composableBuilder(column: $table.comment, builder: (column) => column);

  GeneratedColumn<double> get objectivity => $composableBuilder(
      column: $table.objectivity, builder: (column) => column);

  GeneratedColumn<double> get loyalty =>
      $composableBuilder(column: $table.loyalty, builder: (column) => column);

  GeneratedColumn<double> get professionalism => $composableBuilder(
      column: $table.professionalism, builder: (column) => column);

  GeneratedColumn<double> get harshness =>
      $composableBuilder(column: $table.harshness, builder: (column) => column);

  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<int> get likes =>
      $composableBuilder(column: $table.likes, builder: (column) => column);

  GeneratedColumn<int> get dislikes =>
      $composableBuilder(column: $table.dislikes, builder: (column) => column);
}

class $$ReviewsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ReviewsTable,
    Review,
    $$ReviewsTableFilterComposer,
    $$ReviewsTableOrderingComposer,
    $$ReviewsTableAnnotationComposer,
    $$ReviewsTableCreateCompanionBuilder,
    $$ReviewsTableUpdateCompanionBuilder,
    (Review, BaseReferences<_$AppDatabase, $ReviewsTable, Review>),
    Review,
    PrefetchHooks Function()> {
  $$ReviewsTableTableManager(_$AppDatabase db, $ReviewsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReviewsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReviewsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReviewsTableAnnotationComposer($db: db, $table: table),
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
    $$ReviewsTableAnnotationComposer,
    $$ReviewsTableCreateCompanionBuilder,
    $$ReviewsTableUpdateCompanionBuilder,
    (Review, BaseReferences<_$AppDatabase, $ReviewsTable, Review>),
    Review,
    PrefetchHooks Function()>;
typedef $$RejectedReviewsTableCreateCompanionBuilder = RejectedReviewsCompanion
    Function({
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
typedef $$RejectedReviewsTableUpdateCompanionBuilder = RejectedReviewsCompanion
    Function({
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

class $$RejectedReviewsTableFilterComposer
    extends Composer<_$AppDatabase, $RejectedReviewsTable> {
  $$RejectedReviewsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get professorId => $composableBuilder(
      column: $table.professorId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get comment => $composableBuilder(
      column: $table.comment, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get objectivity => $composableBuilder(
      column: $table.objectivity, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get loyalty => $composableBuilder(
      column: $table.loyalty, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get professionalism => $composableBuilder(
      column: $table.professionalism,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get harshness => $composableBuilder(
      column: $table.harshness, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get likes => $composableBuilder(
      column: $table.likes, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get dislikes => $composableBuilder(
      column: $table.dislikes, builder: (column) => ColumnFilters(column));
}

class $$RejectedReviewsTableOrderingComposer
    extends Composer<_$AppDatabase, $RejectedReviewsTable> {
  $$RejectedReviewsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get professorId => $composableBuilder(
      column: $table.professorId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get comment => $composableBuilder(
      column: $table.comment, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get objectivity => $composableBuilder(
      column: $table.objectivity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get loyalty => $composableBuilder(
      column: $table.loyalty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get professionalism => $composableBuilder(
      column: $table.professionalism,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get harshness => $composableBuilder(
      column: $table.harshness, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get likes => $composableBuilder(
      column: $table.likes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get dislikes => $composableBuilder(
      column: $table.dislikes, builder: (column) => ColumnOrderings(column));
}

class $$RejectedReviewsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RejectedReviewsTable> {
  $$RejectedReviewsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get professorId => $composableBuilder(
      column: $table.professorId, builder: (column) => column);

  GeneratedColumn<String> get comment =>
      $composableBuilder(column: $table.comment, builder: (column) => column);

  GeneratedColumn<double> get objectivity => $composableBuilder(
      column: $table.objectivity, builder: (column) => column);

  GeneratedColumn<double> get loyalty =>
      $composableBuilder(column: $table.loyalty, builder: (column) => column);

  GeneratedColumn<double> get professionalism => $composableBuilder(
      column: $table.professionalism, builder: (column) => column);

  GeneratedColumn<double> get harshness =>
      $composableBuilder(column: $table.harshness, builder: (column) => column);

  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<int> get likes =>
      $composableBuilder(column: $table.likes, builder: (column) => column);

  GeneratedColumn<int> get dislikes =>
      $composableBuilder(column: $table.dislikes, builder: (column) => column);
}

class $$RejectedReviewsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RejectedReviewsTable,
    Review,
    $$RejectedReviewsTableFilterComposer,
    $$RejectedReviewsTableOrderingComposer,
    $$RejectedReviewsTableAnnotationComposer,
    $$RejectedReviewsTableCreateCompanionBuilder,
    $$RejectedReviewsTableUpdateCompanionBuilder,
    (Review, BaseReferences<_$AppDatabase, $RejectedReviewsTable, Review>),
    Review,
    PrefetchHooks Function()> {
  $$RejectedReviewsTableTableManager(
      _$AppDatabase db, $RejectedReviewsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RejectedReviewsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RejectedReviewsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RejectedReviewsTableAnnotationComposer($db: db, $table: table),
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
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RejectedReviewsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RejectedReviewsTable,
    Review,
    $$RejectedReviewsTableFilterComposer,
    $$RejectedReviewsTableOrderingComposer,
    $$RejectedReviewsTableAnnotationComposer,
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

class $$ReactionsTableFilterComposer
    extends Composer<_$AppDatabase, $ReactionsTable> {
  $$ReactionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get professorId => $composableBuilder(
      column: $table.professorId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get reviewId => $composableBuilder(
      column: $table.reviewId, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get liked => $composableBuilder(
      column: $table.liked, builder: (column) => ColumnFilters(column));
}

class $$ReactionsTableOrderingComposer
    extends Composer<_$AppDatabase, $ReactionsTable> {
  $$ReactionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get professorId => $composableBuilder(
      column: $table.professorId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get reviewId => $composableBuilder(
      column: $table.reviewId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get liked => $composableBuilder(
      column: $table.liked, builder: (column) => ColumnOrderings(column));
}

class $$ReactionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReactionsTable> {
  $$ReactionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get professorId => $composableBuilder(
      column: $table.professorId, builder: (column) => column);

  GeneratedColumn<String> get reviewId =>
      $composableBuilder(column: $table.reviewId, builder: (column) => column);

  GeneratedColumn<bool> get liked =>
      $composableBuilder(column: $table.liked, builder: (column) => column);
}

class $$ReactionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ReactionsTable,
    Reaction,
    $$ReactionsTableFilterComposer,
    $$ReactionsTableOrderingComposer,
    $$ReactionsTableAnnotationComposer,
    $$ReactionsTableCreateCompanionBuilder,
    $$ReactionsTableUpdateCompanionBuilder,
    (Reaction, BaseReferences<_$AppDatabase, $ReactionsTable, Reaction>),
    Reaction,
    PrefetchHooks Function()> {
  $$ReactionsTableTableManager(_$AppDatabase db, $ReactionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReactionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReactionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReactionsTableAnnotationComposer($db: db, $table: table),
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
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ReactionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ReactionsTable,
    Reaction,
    $$ReactionsTableFilterComposer,
    $$ReactionsTableOrderingComposer,
    $$ReactionsTableAnnotationComposer,
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

class $$GroupsTableFilterComposer
    extends Composer<_$AppDatabase, $GroupsTable> {
  $$GroupsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get professorId => $composableBuilder(
      column: $table.professorId, builder: (column) => ColumnFilters(column));
}

class $$GroupsTableOrderingComposer
    extends Composer<_$AppDatabase, $GroupsTable> {
  $$GroupsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get professorId => $composableBuilder(
      column: $table.professorId, builder: (column) => ColumnOrderings(column));
}

class $$GroupsTableAnnotationComposer
    extends Composer<_$AppDatabase, $GroupsTable> {
  $$GroupsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<String> get professorId => $composableBuilder(
      column: $table.professorId, builder: (column) => column);
}

class $$GroupsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GroupsTable,
    Group,
    $$GroupsTableFilterComposer,
    $$GroupsTableOrderingComposer,
    $$GroupsTableAnnotationComposer,
    $$GroupsTableCreateCompanionBuilder,
    $$GroupsTableUpdateCompanionBuilder,
    (Group, BaseReferences<_$AppDatabase, $GroupsTable, Group>),
    Group,
    PrefetchHooks Function()> {
  $$GroupsTableTableManager(_$AppDatabase db, $GroupsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GroupsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GroupsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GroupsTableAnnotationComposer($db: db, $table: table),
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
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$GroupsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GroupsTable,
    Group,
    $$GroupsTableFilterComposer,
    $$GroupsTableOrderingComposer,
    $$GroupsTableAnnotationComposer,
    $$GroupsTableCreateCompanionBuilder,
    $$GroupsTableUpdateCompanionBuilder,
    (Group, BaseReferences<_$AppDatabase, $GroupsTable, Group>),
    Group,
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
  $$RejectedReviewsTableTableManager get rejectedReviews =>
      $$RejectedReviewsTableTableManager(_db, _db.rejectedReviews);
  $$ReactionsTableTableManager get reactions =>
      $$ReactionsTableTableManager(_db, _db.reactions);
  $$GroupsTableTableManager get groups =>
      $$GroupsTableTableManager(_db, _db.groups);
}
