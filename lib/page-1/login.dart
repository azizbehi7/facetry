import 'package:faceplus/page-1/forgotpassword.dart';
import 'package:faceplus/page-1/registration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../utils.dart';


class Scene3 extends StatefulWidget {
  const Scene3({super.key});

  @override
  State<Scene3> createState() => _Scene3State();
}

class _Scene3State extends State<Scene3> {
  @override
  State<Scene3> createState() => _Scene3State();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
Future signIn() async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(email:_emailController.text.trim(),
      password: _passwordController.text.trim());
  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
}

  @override
  void dispose(){
super.dispose();
_emailController.dispose();
_passwordController.dispose();
  }

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
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 205*fem, 20*fem),
                width: 200*fem,
                height: 100*fem,
                child: Image.asset(
                  'assets/page-1/images/design-circle-2Rs.png',
                  width: 260*fem,
                  height: 247*fem,
                ),
              ),
              Container(
                // welcomebackAds (103:12)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 63*fem),
                child: Text(
                  'Welcome Back !',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 26*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125*ffem/fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                // undrawmynotificationsreehmk1pT (103:19)
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
                  controller: _emailController,
                  decoration:  InputDecoration(
                    labelText: 'Enter your email',
                    hintText: 'example@example.com' ,
                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(33*fem),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email address';
                    }
                    return null;
                  },

                ),
              ),
              Padding(
                // autogroupcvvz46y (DZnbnUKzNWYyrBjs4wCvvZ)
                padding: EdgeInsets.only(bottom: 16.0),
                child: TextFormField(
                  controller: _passwordController,
                  decoration:  InputDecoration(
                    labelText: 'Enter your password',
                    hintText: 'Password' ,
                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(33*fem),
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },

                ),
              ),
              Container(
                // autogroupvakd2Ld (DZnc2P6Um9Hyw8brEoVakD)
                width: 500,
                height: 50,

                child: Center(

                  child: ElevatedButton(

                    onPressed: () {
                      signIn();
                    },
                    style:
                    ElevatedButton.styleFrom(
                        backgroundColor: Color(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        minimumSize: Size(300, 50)
                    ),
                    child: Text('SIGN IN',
                    style: SafeGoogleFont('Poppins',
                    fontSize: 20
                    ),
                    ),


                  ),
                ),
              ),
              Container(
                // forgotpasswordu33 (103:16)
                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 47*fem),
                padding: EdgeInsets.only(top: 25.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Scene7()),
                    );
                  },
                  style: TextButton.styleFrom (
                    padding: EdgeInsets.zero,
                  ),
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 17*ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2125*ffem/fem,
                      color: Color(0xff029280),
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
              ),
              Container(
                // donthaveanaccountsignupAUm (103:15)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Scene2()
                      ),
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
                        height: 1.2125*ffem/fem,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Don’t',
                        ),
                        TextSpan(
                          text: ' have an account ? ',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: 'Sign up',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff029280),
                          ),
                        ),
                      ],
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