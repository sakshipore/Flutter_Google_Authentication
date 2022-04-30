import 'package:flutter/material.dart';
import 'package:flutter_login_system/localdb.dart';
import 'package:flutter_login_system/views/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_login_system/views/profile.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool isLogIn = false;
  getLoggedInState() async {
    await LocalDataSaver.getLogData().then((value) => {
          setState(() {
            isLogIn = value!;
          })
        });
  }

  @override
  void initState() {
    initState();
    getLoggedInState();
  }

  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: isLogIn ? Profile() : Login(),
    );
  }

  setState(Null Function() param0) {}
}
