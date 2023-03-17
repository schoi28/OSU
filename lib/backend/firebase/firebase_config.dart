import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC48dYbDZvSqrGIaEdhh58c91VViR7K2cg",
            authDomain: "language-app-64476.firebaseapp.com",
            projectId: "language-app-64476",
            storageBucket: "language-app-64476.appspot.com",
            messagingSenderId: "163654811288",
            appId: "1:163654811288:web:042402db81e3af32711aed",
            measurementId: "G-CZH51TQZQB"));
  } else {
    await Firebase.initializeApp();
  }
}
