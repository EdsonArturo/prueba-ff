import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResenaRecord extends FirestoreRecord {
  ResenaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Calificacion" field.
  double? _calificacion;
  double get calificacion => _calificacion ?? 0.0;
  bool hasCalificacion() => _calificacion != null;

  // "Resena" field.
  String? _resena;
  String get resena => _resena ?? '';
  bool hasResena() => _resena != null;

  // "likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "dislikes" field.
  int? _dislikes;
  int get dislikes => _dislikes ?? 0;
  bool hasDislikes() => _dislikes != null;

  // "id_Usuario" field.
  DocumentReference? _idUsuario;
  DocumentReference? get idUsuario => _idUsuario;
  bool hasIdUsuario() => _idUsuario != null;

  // "id_Pelicula" field.
  DocumentReference? _idPelicula;
  DocumentReference? get idPelicula => _idPelicula;
  bool hasIdPelicula() => _idPelicula != null;

  // "usuariosLike" field.
  List<DocumentReference>? _usuariosLike;
  List<DocumentReference> get usuariosLike => _usuariosLike ?? const [];
  bool hasUsuariosLike() => _usuariosLike != null;

  void _initializeFields() {
    _calificacion = castToType<double>(snapshotData['Calificacion']);
    _resena = snapshotData['Resena'] as String?;
    _likes = snapshotData['likes'] as int?;
    _dislikes = snapshotData['dislikes'] as int?;
    _idUsuario = snapshotData['id_Usuario'] as DocumentReference?;
    _idPelicula = snapshotData['id_Pelicula'] as DocumentReference?;
    _usuariosLike = getDataList(snapshotData['usuariosLike']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Resena');

  static Stream<ResenaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResenaRecord.fromSnapshot(s));

  static Future<ResenaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResenaRecord.fromSnapshot(s));

  static ResenaRecord fromSnapshot(DocumentSnapshot snapshot) => ResenaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResenaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResenaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResenaRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createResenaRecordData({
  double? calificacion,
  String? resena,
  int? likes,
  int? dislikes,
  DocumentReference? idUsuario,
  DocumentReference? idPelicula,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Calificacion': calificacion,
      'Resena': resena,
      'likes': likes,
      'dislikes': dislikes,
      'id_Usuario': idUsuario,
      'id_Pelicula': idPelicula,
    }.withoutNulls,
  );

  return firestoreData;
}
