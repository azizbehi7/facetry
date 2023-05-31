
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../utils.dart';
class Scene7 extends StatefulWidget {
  const Scene7({Key? key}) : super(key: key);

  @override
  State<Scene7> createState() => _Scene7State();
}

class _Scene7State extends State<Scene7> {
  TextEditingController _forgotPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Card(

        child: Card(
        // loginPzV (103:8)

        child: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

              Container(
                     // welcomebackAds (103:12)
                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 70*fem),
                    child: Text(
                                'Reset Password !',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                         'Inter',
                                     fontSize: 26*ffem,
                                       fontWeight: FontWeight.w700,
                 height: 5,
                  color: Color(0xff000000),
            ),
                     ),
                              ),
              Container(
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 50*fem),
                 width: 271*fem,
                   height: 176*fem,
                    child: Image.asset(
                      'assets/page-1/images/undrawmynotificationsreehmk-1.png',
                  width: 271*fem,
                  height: 176*fem,
                   ),
                   ),
                  Padding(
                   // autogroupcvvz46y (DZnbnUKzNWYyrBjs4wCvvZ)

                    padding: EdgeInsets.only(bottom: 16.0),

                        child: TextFormField(
                          controller: _forgotPasswordController,
                       decoration:  InputDecoration(
                        labelText: 'Enter your email',
                              hintText: 'example@example.com' ,
                         border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(33*fem),
                     ),
                     ),


                    ),
                 ),
          Padding(
            // autogroupcvvz46y (DZnbnUKzNWYyrBjs4wCvvZ)

            padding: EdgeInsets.only(bottom: 16.0),

            child: ElevatedButton(

              onPressed: () async {
                var forgotEmail = _forgotPasswordController.text.trim();
                try {
                  FirebaseAuth.instance.sendPasswordResetEmail(
                      email: forgotEmail);
                } on FirebaseAuthException catch (e) {
                  print('error $e');
                }
              }

              , style:
              ElevatedButton.styleFrom(
                  backgroundColor: Color(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: Size(300, 50)
              ),
              child: Text('Submit',
                style: SafeGoogleFont('Poppins',
                    fontSize: 20
                ),
              ),


            ),
          ),

        ]

        ),
    ),
    ),
    );
  }
}
