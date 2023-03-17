// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserInfoRecord> _$userInfoRecordSerializer =
    new _$UserInfoRecordSerializer();

class _$UserInfoRecordSerializer
    implements StructuredSerializer<UserInfoRecord> {
  @override
  final Iterable<Type> types = const [UserInfoRecord, _$UserInfoRecord];
  @override
  final String wireName = 'UserInfoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserInfoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.memberType;
    if (value != null) {
      result
        ..add('memberType')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.learnRec;
    if (value != null) {
      result
        ..add('learnRec')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.provideRec;
    if (value != null) {
      result
        ..add('provideRec')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.learnLang;
    if (value != null) {
      result
        ..add('learnLang')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.provideLang;
    if (value != null) {
      result
        ..add('provideLang')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UserInfoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserInfoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'memberType':
          result.memberType = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'learnRec':
          result.learnRec.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'provideRec':
          result.provideRec.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'learnLang':
          result.learnLang = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'provideLang':
          result.provideLang = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserInfoRecord extends UserInfoRecord {
  @override
  final String? email;
  @override
  final String? password;
  @override
  final bool? memberType;
  @override
  final BuiltList<String>? learnRec;
  @override
  final BuiltList<String>? provideRec;
  @override
  final String? uid;
  @override
  final String? phoneNumber;
  @override
  final DateTime? createdTime;
  @override
  final String? photoUrl;
  @override
  final String? displayName;
  @override
  final String? learnLang;
  @override
  final String? provideLang;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserInfoRecord([void Function(UserInfoRecordBuilder)? updates]) =>
      (new UserInfoRecordBuilder()..update(updates))._build();

  _$UserInfoRecord._(
      {this.email,
      this.password,
      this.memberType,
      this.learnRec,
      this.provideRec,
      this.uid,
      this.phoneNumber,
      this.createdTime,
      this.photoUrl,
      this.displayName,
      this.learnLang,
      this.provideLang,
      this.ffRef})
      : super._();

  @override
  UserInfoRecord rebuild(void Function(UserInfoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoRecordBuilder toBuilder() =>
      new UserInfoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfoRecord &&
        email == other.email &&
        password == other.password &&
        memberType == other.memberType &&
        learnRec == other.learnRec &&
        provideRec == other.provideRec &&
        uid == other.uid &&
        phoneNumber == other.phoneNumber &&
        createdTime == other.createdTime &&
        photoUrl == other.photoUrl &&
        displayName == other.displayName &&
        learnLang == other.learnLang &&
        provideLang == other.provideLang &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, email.hashCode),
                                                    password.hashCode),
                                                memberType.hashCode),
                                            learnRec.hashCode),
                                        provideRec.hashCode),
                                    uid.hashCode),
                                phoneNumber.hashCode),
                            createdTime.hashCode),
                        photoUrl.hashCode),
                    displayName.hashCode),
                learnLang.hashCode),
            provideLang.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserInfoRecord')
          ..add('email', email)
          ..add('password', password)
          ..add('memberType', memberType)
          ..add('learnRec', learnRec)
          ..add('provideRec', provideRec)
          ..add('uid', uid)
          ..add('phoneNumber', phoneNumber)
          ..add('createdTime', createdTime)
          ..add('photoUrl', photoUrl)
          ..add('displayName', displayName)
          ..add('learnLang', learnLang)
          ..add('provideLang', provideLang)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserInfoRecordBuilder
    implements Builder<UserInfoRecord, UserInfoRecordBuilder> {
  _$UserInfoRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _memberType;
  bool? get memberType => _$this._memberType;
  set memberType(bool? memberType) => _$this._memberType = memberType;

  ListBuilder<String>? _learnRec;
  ListBuilder<String> get learnRec =>
      _$this._learnRec ??= new ListBuilder<String>();
  set learnRec(ListBuilder<String>? learnRec) => _$this._learnRec = learnRec;

  ListBuilder<String>? _provideRec;
  ListBuilder<String> get provideRec =>
      _$this._provideRec ??= new ListBuilder<String>();
  set provideRec(ListBuilder<String>? provideRec) =>
      _$this._provideRec = provideRec;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _learnLang;
  String? get learnLang => _$this._learnLang;
  set learnLang(String? learnLang) => _$this._learnLang = learnLang;

  String? _provideLang;
  String? get provideLang => _$this._provideLang;
  set provideLang(String? provideLang) => _$this._provideLang = provideLang;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserInfoRecordBuilder() {
    UserInfoRecord._initializeBuilder(this);
  }

  UserInfoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _memberType = $v.memberType;
      _learnRec = $v.learnRec?.toBuilder();
      _provideRec = $v.provideRec?.toBuilder();
      _uid = $v.uid;
      _phoneNumber = $v.phoneNumber;
      _createdTime = $v.createdTime;
      _photoUrl = $v.photoUrl;
      _displayName = $v.displayName;
      _learnLang = $v.learnLang;
      _provideLang = $v.provideLang;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserInfoRecord;
  }

  @override
  void update(void Function(UserInfoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserInfoRecord build() => _build();

  _$UserInfoRecord _build() {
    _$UserInfoRecord _$result;
    try {
      _$result = _$v ??
          new _$UserInfoRecord._(
              email: email,
              password: password,
              memberType: memberType,
              learnRec: _learnRec?.build(),
              provideRec: _provideRec?.build(),
              uid: uid,
              phoneNumber: phoneNumber,
              createdTime: createdTime,
              photoUrl: photoUrl,
              displayName: displayName,
              learnLang: learnLang,
              provideLang: provideLang,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'learnRec';
        _learnRec?.build();
        _$failedField = 'provideRec';
        _provideRec?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserInfoRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
