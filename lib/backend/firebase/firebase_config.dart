import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD1kY-BhmDX4zuY8vCJWtdcXZUG-k8oTy0",
            authDomain: "ejemplobasededatos-63613.firebaseapp.com",
            projectId: "ejemplobasededatos-63613",
            storageBucket: "ejemplobasededatos-63613.appspot.com",
            messagingSenderId: "24041908321",
            appId: "1:24041908321:web:4f70950293abccb2d7a220"));
  } else {
    await Firebase.initializeApp();
  }
}
