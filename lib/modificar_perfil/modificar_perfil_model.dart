import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModificarPerfilModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextFieldNombre widget.
  TextEditingController? textFieldNombreController;
  String? Function(BuildContext, String?)? textFieldNombreControllerValidator;
  String? _textFieldNombreControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Se necesita un nombre de ususario';
    }

    if (val.length < 2) {
      return 'El nombre es muy corto';
    }

    return null;
  }

  // State field(s) for TextFieldDescripcion widget.
  TextEditingController? textFieldDescripcionController;
  String? Function(BuildContext, String?)?
      textFieldDescripcionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldNombreControllerValidator = _textFieldNombreControllerValidator;
  }

  void dispose() {
    textFieldNombreController?.dispose();
    textFieldDescripcionController?.dispose();
  }

  /// Additional helper methods are added here.

}
