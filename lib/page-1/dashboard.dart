import 'package:camera/camera.dart';
import 'package:flutter/material.dart';



class Scene5 extends StatefulWidget {
  @override
  State<Scene5> createState() => _Scene5State();
}

class _Scene5State extends State<Scene5> {

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // dashboardKC1 (3:108)
        width: double.infinity,
        height: 714*fem,
        child: Image.asset(
          'assets/page-1/images/dashboard.png',
          width: 375*fem,
          height: 714*fem,
        ),
      ),
          );
  }
}