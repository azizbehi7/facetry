import 'package:faceplus/page-1/dashboard.dart';
import 'package:faceplus/page-1/login.dart';
import 'package:faceplus/page-1/registration.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import '../utils.dart';


class Scene1 extends StatelessWidget {
  void _launchURL() async {
    const url = 'https://www.google.com';

  }
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Card(

      child: Center(
        child: Container(
          width: double.infinity,
          height: 900,
          decoration: const BoxDecoration (
            color: Color(0xffeeeeee),
          ),
          child: Stack(
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
              Positioned(
                left: 90*fem,
                top: 93.0038757324*fem,
                child: Align(
                  child: SizedBox(
                    width: 207*fem,
                    height: 174.1*fem,
                    child: Image.asset(
                      'assets/page-1/images/undrawmobileuxre59hr-1.png',
                      width: 207*fem,
                      height: 174.1*fem,
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
                              'Get things more secure ',
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
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff620649),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'With MyFacePLUS',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 24*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5*ffem/fem,
                                      color: const Color(0xff620649),
                                    ),
                                  ),
                                  const TextSpan(
                                    text: '\n\n\n\n\n',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 50*fem,
                top: 520*fem,
                width:300 ,
                height: 50,

                    child: ElevatedButton(

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Scene3()),
                        );
                      },

                      style:
                      ElevatedButton.styleFrom(
                        backgroundColor: Color(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),

                      child: Text('SIGN IN',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 20
                        ),),
                    ),

              ),
              Positioned(
                left: 50*fem,
                top: 590*fem,
                width:300 ,
                height: 50,

                child: ElevatedButton(

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Scene2()),
                    );
                  },

                  style:
                  ElevatedButton.styleFrom(
                    backgroundColor: Color(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),

                  child: Text('REGISTER',
                    style: SafeGoogleFont('Poppins',
                        fontSize: 20
                    ),),
                ),

              ),
              Positioned(
                left: 56*fem,
                top: 654*fem,
                child: Align(
                  child: SizedBox(
                    width: 292*fem,
                    height: 34*fem,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Scene5()),
                        );
                      },
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2102272034*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: 'By getting started you agree to our',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),

                            TextSpan(
                              text: ' terms of privacy',
                             style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff0019f9),
                                decoration: TextDecoration.underline
                              ),

                            ),
                            TextSpan(
                              text: ' and',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                            TextSpan(
                              text: ' policy',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff0019f9),
                                  decoration: TextDecoration.underline
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}