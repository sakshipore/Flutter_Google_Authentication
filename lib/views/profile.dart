import 'package:flutter/material.dart';
import 'package:flutter_login_system/constant.dart';
import 'package:flutter_login_system/services/auth.dart';
import 'package:flutter_login_system/views/login.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  SignOutMethod(context) async {
    await signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://lh3.googleusercontent.com/a/AATXAJwqCoJRjYPKOIqqpC5hy2DvsJLER5z6tVz-EiZ-=s96-c"),
          ),
          Text(constant.name),
          Text(constant.email),
          ElevatedButton(
              onPressed: () {
                SignOutMethod(context);
              },
              child: Text("SIGN OUT"))
        ],
      )),
    ));
  }
}
