import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_flutter_post_app/firebase_options.dart';
import 'package:firebase_flutter_post_app/page/post/post_view.dart';
import 'package:firebase_flutter_post_app/services/app_setup.dart';
import 'package:flutter/material.dart';

void main()async {
  AppSetup.setup;
  await      await Firebase.initializeApp(
 options: DefaultFirebaseOptions.currentPlatform

 //Post app Firebase
 );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home:PostView(),
    );
  }
}
