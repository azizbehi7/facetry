import 'dart:io';
import 'package:camera/camera.dart';
import 'package:faceplus/locator.dart';
import 'package:faceplus/page-1/FacePainter.dart';
import 'package:faceplus/page-1/cameraservice.dart';
import 'package:faceplus/service/face_detection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

final FaceDetectorService _faceDetectorService =
locator<FaceDetectorService>();
final CameraService _cameraService = locator<CameraService>();

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<CameraDescription> cameras;
  late CameraController cameraController;
  late File _selectedImage;

  int direction = 0;

  @override
  void initState() {
    startCamera(direction);
    super.initState();

  }

  void startCamera(int direction) async {
    cameras = await availableCameras();

    cameraController = CameraController(
      cameras[direction],
      ResolutionPreset.high,
      enableAudio: false,
    );

    await cameraController.initialize().then((value) {
      if(!mounted) {
        return;
      }
      setState(() {}); //To refresh widget
    }).catchError((e) {
      print(e);
    });
  }
  Future<void> _saveImageFromCamera() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      final File savedImage = File(image.path);

      setState(() {
        _selectedImage = savedImage;
      });
    }
  }

  @override
  void dispose() {
    cameraController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(cameraController.value.isInitialized) {
      return Scaffold(
        body: Stack(
          children: [
            CameraPreview(cameraController),
            GestureDetector(
              onTap: () {
                setState(() {
                  direction = direction == 0 ? 1 : 0;
                  startCamera(direction);
                });
              },
              child: button(Icons.flip_camera_ios_outlined, Alignment.bottomLeft),
            ),
            GestureDetector(
              onTap: () {
                _saveImageFromCamera;

                cameraController.takePicture().then((XFile? file) {
                  if(mounted) {
                    if(file != null) {
                      print("Picture saved to ${file.path}");

                    }
                  }
                });
              },
              child: button(Icons.camera_alt_outlined, Alignment.bottomCenter),
            ),
            const Align(
              alignment: AlignmentDirectional.topCenter,
              child: Text(
                "take a photo",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            CameraPreview(cameraController),
            if (_faceDetectorService.faceDetected)
              CustomPaint(
                painter: FacePainter(
                  face: _faceDetectorService.faces[0],
                  imageSize: _cameraService.getImageSize(), results: null, 

                ),
              )
          ],

        ),
      );
    } else {
      return const SizedBox();
    }
  }

  Widget button(IconData icon, Alignment alignment) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          bottom: 20,
        ),
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2, 2),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

}