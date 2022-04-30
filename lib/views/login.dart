import 'package:flutter/material.dart';
import 'package:flutter_login_system/localdb.dart';
import 'package:flutter_login_system/services/auth.dart';
import 'package:flutter_login_system/views/profile.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_login_system/constant.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // void checkUserLog() async {
  //   final FirebaseAuth auth = FirebaseAuth.instance;
  //   final user = await auth.currentUser;
  //   if (user != null) {
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => Profile()));
  //   }
  // }

  // @override
  // void initState() {
  //   checkUserLog();
  // }

  signInMethod(context) async {
    await signInWithGoogle();
    // var constant;
    constant.name = (await LocalDataSaver.getName())!;
    constant.email = (await LocalDataSaver.getEmail())!;
    constant.img = (await LocalDataSaver.getImg())!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login to App"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SignInButton(Buttons.Google, onPressed: () async {
            await signInMethod(context);
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Profile()));
          })
        ],
      )),
    );
  }
}
