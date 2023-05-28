// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResenaStruct extends FFFirebaseStruct {
  ResenaStruct({
    DocumentReference? idResena,
    bool? like,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _idResena = idResena,
        _like = like,
        super(firestoreUtilData);

  // "id_Resena" field.
  DocumentReference? _idResena;
  DocumentReference? get idResena => _idResena;
  set idResena(DocumentReference? val) => _idResena = val;
  bool hasIdResena() => _idResena != null;

  // "like" field.
  bool? _like;
  bool get like => _like ?? false;
  set like(bool? val) => _like = val;
  bool hasLike() => _like != null;

  static ResenaStruct fromMap(Map<String, dynamic> data) => ResenaStruct(
        idResena: data['id_Resena'] as DocumentReference?,
        like: data['like'] as bool?,
      );

  static ResenaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ResenaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id_Resena': _idResena,
        'like': _like,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_Resena': serializeParam(
          _idResena,
          ParamType.DocumentReference,
        ),
        'like': serializeParam(
          _like,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ResenaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResenaStruct(
        idResena: deserializeParam(
          data['id_Resena'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Pelicula'],
        ),
        like: deserializeParam(
          data['like'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ResenaStruct(${toMap()})';
}

ResenaStruct createResenaStruct({
  DocumentReference? idResena,
  bool? like,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ResenaStruct(
      idResena: idResena,
      like: like,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ResenaStruct? updateResenaStruct(
  ResenaStruct? resena, {
  bool clearUnsetFields = true,
}) =>
    resena
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addResenaStructData(
  Map<String, dynamic> firestoreData,
  ResenaStruct? resena,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (resena == null) {
    return;
  }
  if (resena.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && resena.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final resenaData = getResenaFirestoreData(resena, forFieldValue);
  final nestedData = resenaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = resena.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getResenaFirestoreData(
  ResenaStruct? resena, [
  bool forFieldValue = false,
]) {
  if (resena == null) {
    return {};
  }
  final firestoreData = mapToFirestore(resena.toMap());

  // Add any Firestore field values
  resena.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getResenaListFirestoreData(
  List<ResenaStruct>? resenas,
) =>
    resenas?.map((e) => getResenaFirestoreData(e, true)).toList() ?? [];
