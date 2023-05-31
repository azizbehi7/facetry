import 'package:faceplus/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';


class Scene6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // dashboardKC1 (3:108)
        width: double.infinity,
        height: 150*fem,
        child :
        Positioned(
          // getthingsmoresecureCrR (1:90)
          left: 0*fem,
          top: 0*fem,
          child: Align(
            child: SizedBox(
              width: 292*fem,
              height: 36,
              child: Text(
                'Term of privacy & policy  ',
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
      ),



    );


  }
}
