import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: DefaultFirebaseOptions.currentPlatform.apiKey,
      appId: DefaultFirebaseOptions.currentPlatform.appId,
      messagingSenderId: DefaultFirebaseOptions.currentPlatform.messagingSenderId,
      projectId: DefaultFirebaseOptions.currentPlatform.projectId,
    ),
  );
}
