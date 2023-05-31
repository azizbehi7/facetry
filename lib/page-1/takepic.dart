
import 'package:faceplus/page-1/camera.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../utils.dart';
final FirebaseAuth _auth = FirebaseAuth.instance;

class Scene9 extends StatefulWidget {
  const Scene9({Key? key}) : super(key: key);

  @override
  State<Scene9> createState() => _Scene9State();

}

class _Scene9State extends State<Scene9> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Card(

      child: Card(
        // loginPzV (103:8)

        child: SingleChildScrollView(
          child: Center(
            child: Column(
                children: [

                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 70*fem),
                    child: Text(
                      'Take some shots !',
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
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 50*fem),
                      width: 271*fem,
                      height: 176*fem,
                      child: Image.asset(
                        'assets/page-1/images/face.png',
                        width: 271*fem,
                        height: 176*fem,
                      ),
                    ),
                  ),

                  Center(
                    child: Padding(
                      // autogroupcvvz46y (DZnbnUKzNWYyrBjs4wCvvZ)

                      padding: EdgeInsets.only(bottom: 16.0),

                      child: ElevatedButton(

                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainScreen()
                            ),
                          );

                        }

                        , style:
                      ElevatedButton.styleFrom(
                          backgroundColor: Color(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          minimumSize: Size(300, 50)
                      ),
                        child: Text('Take photos',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 20
                          ),
                        ),


                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      // autogroupcvvz46y (DZnbnUKzNWYyrBjs4wCvvZ)

                      padding: EdgeInsets.only(bottom: 16.0),

                      child: ElevatedButton(

                        onPressed: () async {
                          SignOut();

                        }

                        , style:
                      ElevatedButton.styleFrom(
                          backgroundColor: Color(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          minimumSize: Size(300, 50)
                      ),
                        child: Text('Sign out',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 20
                          ),
                        ),


                      ),
                    ),
                  ),

                ]

            ),
          ),
        ),
      ),
    );
  }
}

void SignOut() async {
  await _auth.signOut();
}
