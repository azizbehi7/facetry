
import 'package:faceplus/Auth.dart';
import 'package:faceplus/locator.dart';
import 'package:faceplus/page-1/camera.dart';
import 'package:faceplus/page-1/facial-.dart';
import 'package:faceplus/page-1/takepic.dart';
import 'package:flutter/material.dart';
import 'utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:camera/camera.dart';
List<CameraDescription>cameras=[];
void main() async {
	WidgetsFlutterBinding.ensureInitialized();
	await Firebase.initializeApp();
cameras=await availableCameras();
	runApp(MyApp());
	setupLocator();
}

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Auth()
	);
	}



}
