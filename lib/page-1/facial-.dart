import 'package:faceplus/page-1/camera.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';




import '../utils.dart';
final FirebaseAuth _auth = FirebaseAuth.instance;

class Scene4 extends StatelessWidget {
  const Scene4({super.key});
  void SignOut() async {
    await _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Card(

      child: Center(

        child: Column(
          children: [
            Positioned(
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 260*fem,
                  height: 247*fem,
                  child: Image.asset(
                    'assets/page-1/images/design-circle.png',
                    width: 260*fem,
                    height: 247*fem,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Positioned(
                left: 90*fem,
                top: 500*fem,
                child: Align(
                  child: SizedBox(
                    width: 207*fem,
                    height: 174.1*fem,
                    child: Image.asset(
                      'assets/page-1/images/face.png',
                      width: 207*fem,
                      height: 174.1*fem,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 40*fem,
              top: 412.3965454102*fem,
              child: Container(
                width: 292*fem,
                height: 71.6*fem,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 292*fem,
                          height: 36*fem,
                          child: Text(
                            'FACE CHECK ',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16.5*fem,
                      top: 35.6034545898*fem,
                      child: Align(
                        child: SizedBox(
                          width: 250*fem,
                          height: 36*fem,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MainScreen()
                                ),
                              );
                            },
                            style:
                            ElevatedButton.styleFrom(
                                backgroundColor: Color(0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                minimumSize: Size(300, 50)
                            ),
                            child: Text("Let's take some shots",
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 19*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5*ffem/fem,
                                color: Colors.white,
                              ),
                            ),)
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Positioned(

                child: ElevatedButton(
                  onPressed: () {
                    SignOut();
                  },
                  style:
                  ElevatedButton.styleFrom(
                      backgroundColor: Color(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      minimumSize: Size(300, 50)
                  ),
                  child: Text("Sign out",
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Poppins',
                      fontSize: 19*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5*ffem/fem,
                      color: Colors.white,
                    ),
                  ),)
              ),
            ),



          ],
        ),
      ),
          );
  }
}