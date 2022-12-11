import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thetiago/firebase_options.dart';
import 'package:thetiago/views/signup.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future <void> main() async {
  var token = "OlIx5BUb14HaEze3l/LxEGV7VNt71Vv8bfn5oERW0dwdoH6k2mTJJCF87E1sgJi5swZRLCEjvUWxk41lZ+DFlA==";
  await WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  //await Firebase.initializeApp();
  await Supabase.initialize(
      url: "https://yqwlqrjzwtcrwuaejfbb.supabase.co",
      headers: {
        "Authorization":"Bearer $token"
      },
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlxd2xxcmp6d3Rjcnd1YWVqZmJiIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzA3MDY1MTAsImV4cCI6MTk4NjI4MjUxMH0.d8Eyb9Lx2edp9DSWHchsGos2d_OGulkx1ZyV9p8EgiY");

  runApp(ProviderScope(child: const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Nsignup(),
    );
  }
}
