import 'package:faceplus/page-1/facial-.dart';
import 'package:faceplus/page-1/login.dart';
import 'package:faceplus/page-1/slash-screeen.dart';
import 'package:faceplus/page-1/takepic.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder <User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
          builder: ((context, snapshot){
            if (snapshot.hasData){
              return Scene9();
            } else{
              return  Scene1();
            }

          }),

      ),

      );

  }
}
