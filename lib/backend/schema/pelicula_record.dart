import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PeliculaRecord extends FirestoreRecord {
  PeliculaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "FechaEstreno" field.
  DateTime? _fechaEstreno;
  DateTime? get fechaEstreno => _fechaEstreno;
  bool hasFechaEstreno() => _fechaEstreno != null;

  // "Sinopsis" field.
  String? _sinopsis;
  String get sinopsis => _sinopsis ?? '';
  bool hasSinopsis() => _sinopsis != null;

  // "Trailer" field.
  String? _trailer;
  String get trailer => _trailer ?? '';
  bool hasTrailer() => _trailer != null;

  // "Poster" field.
  String? _poster;
  String get poster => _poster ?? '';
  bool hasPoster() => _poster != null;

  // "Resenas" field.
  List<ResenaStruct>? _resenas;
  List<ResenaStruct> get resenas => _resenas ?? const [];
  bool hasResenas() => _resenas != null;

  // "Calificacion" field.
  double? _calificacion;
  double get calificacion => _calificacion ?? 0.0;
  bool hasCalificacion() => _calificacion != null;

  // "Clasificacion" field.
  String? _clasificacion;
  String get clasificacion => _clasificacion ?? '';
  bool hasClasificacion() => _clasificacion != null;

  // "Genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  // "Director" field.
  String? _director;
  String get director => _director ?? '';
  bool hasDirector() => _director != null;

  // "Productor" field.
  String? _productor;
  String get productor => _productor ?? '';
  bool hasProductor() => _productor != null;

  // "Escritor" field.
  String? _escritor;
  String get escritor => _escritor ?? '';
  bool hasEscritor() => _escritor != null;

  // "Duracion" field.
  String? _duracion;
  String get duracion => _duracion ?? '';
  bool hasDuracion() => _duracion != null;

  // "id_pelicula" field.
  String? _idPelicula;
  String get idPelicula => _idPelicula ?? '';
  bool hasIdPelicula() => _idPelicula != null;

  // "estreno" field.
  bool? _estreno;
  bool get estreno => _estreno ?? false;
  bool hasEstreno() => _estreno != null;

  // "proximamente" field.
  bool? _proximamente;
  bool get proximamente => _proximamente ?? false;
  bool hasProximamente() => _proximamente != null;

  // "top5" field.
  bool? _top5;
  bool get top5 => _top5 ?? false;
  bool hasTop5() => _top5 != null;

  // "peliculaDelDia" field.
  bool? _peliculaDelDia;
  bool get peliculaDelDia => _peliculaDelDia ?? false;
  bool hasPeliculaDelDia() => _peliculaDelDia != null;

  // "ganadorasAlOscar" field.
  bool? _ganadorasAlOscar;
  bool get ganadorasAlOscar => _ganadorasAlOscar ?? false;
  bool hasGanadorasAlOscar() => _ganadorasAlOscar != null;

  // "mejorValorada" field.
  bool? _mejorValorada;
  bool get mejorValorada => _mejorValorada ?? false;
  bool hasMejorValorada() => _mejorValorada != null;

  // "popularMexico" field.
  bool? _popularMexico;
  bool get popularMexico => _popularMexico ?? false;
  bool hasPopularMexico() => _popularMexico != null;

  // "Actores" field.
  String? _actores;
  String get actores => _actores ?? '';
  bool hasActores() => _actores != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _fechaEstreno = snapshotData['FechaEstreno'] as DateTime?;
    _sinopsis = snapshotData['Sinopsis'] as String?;
    _trailer = snapshotData['Trailer'] as String?;
    _poster = snapshotData['Poster'] as String?;
    _resenas = getStructList(
      snapshotData['Resenas'],
      ResenaStruct.fromMap,
    );
    _calificacion = castToType<double>(snapshotData['Calificacion']);
    _clasificacion = snapshotData['Clasificacion'] as String?;
    _genero = snapshotData['Genero'] as String?;
    _director = snapshotData['Director'] as String?;
    _productor = snapshotData['Productor'] as String?;
    _escritor = snapshotData['Escritor'] as String?;
    _duracion = snapshotData['Duracion'] as String?;
    _idPelicula = snapshotData['id_pelicula'] as String?;
    _estreno = snapshotData['estreno'] as bool?;
    _proximamente = snapshotData['proximamente'] as bool?;
    _top5 = snapshotData['top5'] as bool?;
    _peliculaDelDia = snapshotData['peliculaDelDia'] as bool?;
    _ganadorasAlOscar = snapshotData['ganadorasAlOscar'] as bool?;
    _mejorValorada = snapshotData['mejorValorada'] as bool?;
    _popularMexico = snapshotData['popularMexico'] as bool?;
    _actores = snapshotData['Actores'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pelicula');

  static Stream<PeliculaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PeliculaRecord.fromSnapshot(s));

  static Future<PeliculaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PeliculaRecord.fromSnapshot(s));

  static PeliculaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PeliculaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PeliculaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PeliculaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PeliculaRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createPeliculaRecordData({
  String? nombre,
  DateTime? fechaEstreno,
  String? sinopsis,
  String? trailer,
  String? poster,
  double? calificacion,
  String? clasificacion,
  String? genero,
  String? director,
  String? productor,
  String? escritor,
  String? duracion,
  String? idPelicula,
  bool? estreno,
  bool? proximamente,
  bool? top5,
  bool? peliculaDelDia,
  bool? ganadorasAlOscar,
  bool? mejorValorada,
  bool? popularMexico,
  String? actores,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'FechaEstreno': fechaEstreno,
      'Sinopsis': sinopsis,
      'Trailer': trailer,
      'Poster': poster,
      'Calificacion': calificacion,
      'Clasificacion': clasificacion,
      'Genero': genero,
      'Director': director,
      'Productor': productor,
      'Escritor': escritor,
      'Duracion': duracion,
      'id_pelicula': idPelicula,
      'estreno': estreno,
      'proximamente': proximamente,
      'top5': top5,
      'peliculaDelDia': peliculaDelDia,
      'ganadorasAlOscar': ganadorasAlOscar,
      'mejorValorada': mejorValorada,
      'popularMexico': popularMexico,
      'Actores': actores,
    }.withoutNulls,
  );

  return firestoreData;
}
