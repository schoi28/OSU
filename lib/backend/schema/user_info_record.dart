import 'dart:async';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_info_record.g.dart';

abstract class UserInfoRecord
    implements Built<UserInfoRecord, UserInfoRecordBuilder> {
  static Serializer<UserInfoRecord> get serializer =>
      _$userInfoRecordSerializer;

  String? get email;

  String? get password;

  bool? get memberType;

  BuiltList<String>? get learnRec;

  BuiltList<String>? get provideRec;

  String? get uid;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get learnLang;

  String? get provideLang;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserInfoRecordBuilder builder) => builder
    ..email = ''
    ..password = ''
    ..memberType = false
    ..learnRec = ListBuilder()
    ..provideRec = ListBuilder()
    ..uid = ''
    ..phoneNumber = ''
    ..photoUrl = ''
    ..displayName = ''
    ..learnLang = ''
    ..provideLang = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserInfo');

  static Stream<UserInfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserInfoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserInfoRecord._();
  factory UserInfoRecord([void Function(UserInfoRecordBuilder) updates]) =
      _$UserInfoRecord;

  static UserInfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserInfoRecordData({
  String? email,
  String? password,
  bool? memberType,
  String? uid,
  String? phoneNumber,
  DateTime? createdTime,
  String? photoUrl,
  String? displayName,
  String? learnLang,
  String? provideLang,
}) {
  final firestoreData = serializers.toFirestore(
    UserInfoRecord.serializer,
    UserInfoRecord(
      (u) => u
        ..email = email
        ..password = password
        ..memberType = memberType
        ..learnRec = null
        ..provideRec = null
        ..uid = uid
        ..phoneNumber = phoneNumber
        ..createdTime = createdTime
        ..photoUrl = photoUrl
        ..displayName = displayName
        ..learnLang = learnLang
        ..provideLang = provideLang,
    ),
  );

  return firestoreData;
}
