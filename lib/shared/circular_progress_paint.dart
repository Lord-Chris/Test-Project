import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_project/constants/colors.dart';

class CircularProgressPaint extends CustomPainter {
  final double progress;
  CircularProgressPaint({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final paint = Paint()
      ..color = Colors.grey.shade300
      ..strokeWidth = 15
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    final arcpaint = Paint()
      ..color = AppColors.subMain
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    const startAngle = -pi / 2;
    double sweepAngle = 2 * pi * (progress / 100);
    canvas.drawCircle(center, radius, paint);
    canvas.drawArc(
        Rect.fromCircle(
          center: center,
          radius: radius,
        ),
        startAngle,
        sweepAngle,
        false,
        arcpaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
