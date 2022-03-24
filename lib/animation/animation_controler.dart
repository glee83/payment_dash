import 'package:flutter/material.dart';
import 'package:payment_dash/animation/my_painter.dart';
import 'package:payment_dash/constants/constant.dart';

class CustomAnimation extends StatefulWidget {
  final int count;
  final Color color;
  const CustomAnimation({Key? key, required this.count, required this.color})
      : super(key: key);

  @override
  State<CustomAnimation> createState() => _CustomAnimationState();
}

class _CustomAnimationState extends State<CustomAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000))
      ..repeat();

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return CustomPaint(
          painter: WaterRipplePainter(animationController.value,
              count: widget.count, color: widget.color),
        );
      },
    );
  }
}

  

  ///////////////////////////////////////
  ///
  /////////////////////////////////////


// package com.example.payment_dash

// import io.flutter.embedding.android.FlutterActivity

// class MainActivity: FlutterActivity() {
// }

