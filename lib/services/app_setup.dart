import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_flutter_post_app/firebase_options.dart';
import 'package:flutter/cupertino.dart';

class AppSetup{

  static Future<void> get setup async{
    WidgetsFlutterBinding.ensureInitialized();
   
//        await Firebase.initializeApp(
//  options: DefaultFirebaseOptions.currentPlatform
//  );
  }
}