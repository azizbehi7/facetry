import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:flutter/material.dart';

class FacePainter extends CustomPainter {
  FacePainter({required this.imageSize, required this.face ,this.results});
  final Size imageSize;
  late double scaleX, scaleY;
 late Face face;
  late dynamic results;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..color = Colors.blue;
    for (String label in results.keys) {
      for (Face face in results[label]) {
        // face = results[label];
        scaleX = size.width / imageSize.width;
        scaleY = size.height / imageSize.height;
        canvas.drawRRect(
            _scaleRect(
                rect: face.boundingBox,
                imageSize: imageSize,
                widgetSize: size,
                scaleX: scaleX,
                scaleY: scaleY),
            paint);
        TextSpan span = TextSpan(
            style: TextStyle(color: Colors.orange[300], fontSize: 15),
            text: label);
        TextPainter textPainter = TextPainter(
            text: span,
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr);
        textPainter.layout();
        textPainter.paint(
            canvas,
            Offset(
                size.width - (60 + face.boundingBox.left.toDouble()) * scaleX,
                (face.boundingBox.top.toDouble() - 10) * scaleY));
      }
    }
  }

  @override
  bool shouldRepaint(FacePainter oldDelegate) {
    return oldDelegate.imageSize != imageSize || oldDelegate.results != results;
  }
}


RRect _scaleRect(
    {required Rect rect,
    required Size imageSize,
    required Size widgetSize,
    double scaleX = 1,
    double scaleY = 1}) {
  return RRect.fromLTRBR(
      (widgetSize.width - rect.left.toDouble() * scaleX),
      rect.top.toDouble() * scaleY,
      widgetSize.width - rect.right.toDouble() * scaleX,
      rect.bottom.toDouble() * scaleY,
      Radius.circular(10));
}
