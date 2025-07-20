import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBwhErBHxtgfQnlb1o51g9gVpEUIEhMrA8",
            authDomain: "agrinance-2paswm.firebaseapp.com",
            projectId: "agrinance-2paswm",
            storageBucket: "agrinance-2paswm.firebasestorage.app",
            messagingSenderId: "960261113831",
            appId: "1:960261113831:web:e1210e133c344ad5ab1f42",
            measurementId: "G-PJ5TLZ44ZE"));
  } else {
    await Firebase.initializeApp();
  }
}
