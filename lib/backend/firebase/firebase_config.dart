import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAR8kiF8FT0SvroZ9APH6zySwLvdbVoSZA",
            authDomain: "jachelist-nwztxh.firebaseapp.com",
            projectId: "jachelist-nwztxh",
            storageBucket: "jachelist-nwztxh.appspot.com",
            messagingSenderId: "206060054869",
            appId: "1:206060054869:web:2057ab27bf059f551467dc"));
  } else {
    await Firebase.initializeApp();
  }
}
