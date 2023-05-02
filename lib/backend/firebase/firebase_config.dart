import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAPEm5kg2vFgMDRGHsCFl1ftBjcqLJk-Ts",
            authDomain: "naijafoods-6c33d.firebaseapp.com",
            projectId: "naijafoods-6c33d",
            storageBucket: "naijafoods-6c33d.appspot.com",
            messagingSenderId: "486775197323",
            appId: "1:486775197323:web:53a1c51908578ad4c58e8e"));
  } else {
    await Firebase.initializeApp();
  }
}
