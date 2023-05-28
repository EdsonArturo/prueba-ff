import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "resenas" field.
  int? _resenas;
  int get resenas => _resenas ?? 0;
  bool hasResenas() => _resenas != null;

  // "seguidores" field.
  int? _seguidores;
  int get seguidores => _seguidores ?? 0;
  bool hasSeguidores() => _seguidores != null;

  // "seguidos" field.
  int? _seguidos;
  int get seguidos => _seguidos ?? 0;
  bool hasSeguidos() => _seguidos != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "resenaLike" field.
  List<DocumentReference>? _resenaLike;
  List<DocumentReference> get resenaLike => _resenaLike ?? const [];
  bool hasResenaLike() => _resenaLike != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "id_Seguidores" field.
  List<DocumentReference>? _idSeguidores;
  List<DocumentReference> get idSeguidores => _idSeguidores ?? const [];
  bool hasIdSeguidores() => _idSeguidores != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _resenas = snapshotData['resenas'] as int?;
    _seguidores = snapshotData['seguidores'] as int?;
    _seguidos = snapshotData['seguidos'] as int?;
    _admin = snapshotData['admin'] as bool?;
    _resenaLike = getDataList(snapshotData['resenaLike']);
    _descripcion = snapshotData['descripcion'] as String?;
    _idSeguidores = getDataList(snapshotData['id_Seguidores']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createUsuariosRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? resenas,
  int? seguidores,
  int? seguidos,
  bool? admin,
  String? descripcion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'resenas': resenas,
      'seguidores': seguidores,
      'seguidos': seguidos,
      'admin': admin,
      'descripcion': descripcion,
    }.withoutNulls,
  );

  return firestoreData;
}
