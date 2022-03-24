import 'dart:math';

import 'package:flutter/material.dart';

import '../constants/constant.dart';

class WaterRipplePainter extends CustomPainter {
  final double progress;
  final int count;
  final Color color;

  final Paint _paint = Paint()..style = PaintingStyle.fill;

  WaterRipplePainter(this.progress,
      {this.count = 3, this.color = kPrimaryColor});

  @override
  void paint(Canvas canvas, Size size) {
    double radius = min(size.width / 2, size.height / 2);

    for (int i = count; i >= 0; i--) {
      final double opacity = (1.0 - ((i + progress) / (count + 1)));
      final Color _color = color.withOpacity(opacity);
      _paint..color = _color;

      double _radius = radius * ((i + progress) / (count + 1));

      canvas.drawCircle(
          Offset(size.width / 2, size.height / 2), _radius, _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}



// class MyPainter extends CustomPainter {
//   final double firstRippleRadius;
//   final double firstRippleOpacity;
//   final double firstRippleStrokeWidth;
//   final double secondRippleRadius;
//   final double secondRippleOpacity;
//   final double secondRippleStrokeWidth;
//   final double thirdRippleRadius;
//   final double thirdRippleOpacity;
//   final double thirdRippleStrokeWidth;
//   final double centerCircleRadius;
//   MyPainter(
//     this.firstRippleRadius,
//     this.firstRippleOpacity,
//     this.firstRippleStrokeWidth,
//     this.secondRippleRadius,
//     this.secondRippleOpacity,
//     this.secondRippleStrokeWidth,
//     this.thirdRippleRadius,
//     this.thirdRippleOpacity,
//     this.thirdRippleStrokeWidth,
//     this.centerCircleRadius,
//   );

//   @override
//   void paint(Canvas canvas, Size size) {
//     Color myColor = kPrimaryColor;

//     Paint firstPaint = Paint();

//     firstPaint.color = myColor.withOpacity(firstRippleOpacity);
//     firstPaint.style = PaintingStyle.stroke;
//     firstPaint.strokeWidth = firstRippleStrokeWidth;

//     canvas.drawCircle(Offset.zero, firstRippleRadius, firstPaint);

//     Paint secondPaint = Paint();

//     secondPaint.color = myColor.withOpacity(secondRippleOpacity);
//     secondPaint.style = PaintingStyle.stroke;
//     secondPaint.strokeWidth = secondRippleStrokeWidth;

//     canvas.drawCircle(Offset.zero, secondRippleRadius, secondPaint);

//     Paint thirdPaint = Paint();

//     thirdPaint.color = myColor.withOpacity(thirdRippleOpacity);
//     thirdPaint.style = PaintingStyle.stroke;
//     thirdPaint.strokeWidth = thirdRippleStrokeWidth;

//     canvas.drawCircle(Offset.zero, thirdRippleRadius, thirdPaint);

//     Paint fourthPaint = Paint();

//     fourthPaint.color = kPrimaryColor;
//     fourthPaint.style = PaintingStyle.fill;
//     canvas.drawCircle(Offset.zero, centerCircleRadius, fourthPaint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
