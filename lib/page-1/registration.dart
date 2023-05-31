import 'package:faceplus/page-1/login.dart';
import 'package:faceplus/page-1/slash-screeen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



import '../utils.dart';


class Scene2 extends StatefulWidget {

  Scene2({super.key});

  @override
  State<Scene2> createState() => _Scene2State();
}

class _Scene2State extends State<Scene2> {
  final _formKey = GlobalKey<FormState>();

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  Future signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email:_emailController.text.trim(),
        password: _passwordController.text.trim());
    Navigator.of(context).pushNamed('/');
    @override
    void dispose(){
      super.dispose();
      _emailController.dispose();
      _passwordController.dispose();
    }
  }
  Future save () async {
    await  FirebaseFirestore.instance.collection('userinf').add(
        {
          'full name' : _nameController.value.text,
          'email' :_emailController.value.text
        });

  }




  @override
  Widget build(BuildContext context) {

    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Card(
      key: _formKey,

      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          // registration97K (1:111)
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              // designcircleyc9 (1:112)
              children: [
                Align(
                  child: Image.asset(
                    'assets/page-1/images/design-circle-u33.png',
                    width: 200*fem,
                    height: 200*fem,
                    alignment: Alignment.center,

                  ),
                )



              ],
            ),
            Container(
              // welcomeonboardFJm (1:162)
              margin: EdgeInsets.fromLTRB(75*fem, 30*fem, 15*fem, 8.12*fem),

              child: Text(
                'Welcome Onboard!',

                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 26*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125*ffem/fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),



            Container(
              // letshelpyougetonboardVyo (1:167)

              margin: EdgeInsets.fromLTRB(50*fem, 8*fem, 15*fem, 8.12*fem),
              child: Text(
                'Let’s help you get onboard.',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 20*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125*ffem/fem,
                  letterSpacing: 1.2*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),

              Padding(
                  padding: EdgeInsets.only(bottom: 16.0),

               child: TextFormField(
                 controller: _nameController,
                decoration:  InputDecoration(
                  labelText: 'Full Name',
                  hintText: 'First Name & Last Name' ,
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(33*fem),
                  ),
                ),

              ),
              ),

            Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                 child: TextFormField(
                   controller: _emailController,
              decoration: InputDecoration(

                labelText: 'Email',
                hintText: 'example@example.com' ,
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(33*fem),
              ),
              ),

            ),
           ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: TextFormField(
                controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter a password' ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(33*fem),
                    ),
                 ),
                  obscureText: true,

            ),
    ),
            Padding(
              padding: EdgeInsets.only(bottom: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Confirm Your Password',
                  hintText: 'Confirm Your password' ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(33*fem),
                  ),
                ),
                obscureText: true,

              ),
            ),

            Container(
              // autogroupjpdoGh3 (DZnb3AEpote1KWCD1zjPdo)
              width: 500,
              height: 50,

              child: Center(

                child: ElevatedButton(

                  onPressed: () {
                   save();
                    signUp();
                    },
                  style:
                  ElevatedButton.styleFrom(
                    backgroundColor: Color(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(300, 50)
                  ),
                  child: Text('REGISTER',
                    style: SafeGoogleFont('Poppins',
                        fontSize: 20
                    ),),


                ),
              ),
            ),
            Container(
              // alreadyhaveanaccountsigninJ7w (3:16)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Scene3()
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
                      height: 1.2102272034*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'Already have an account ? ',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                      TextSpan(
                        text: 'Sign in',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xff029280),
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
          );
  }
}