import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnalogClock extends StatefulWidget {
  final Color hourHandColor;
  final double hourHandWidth;
  final double hourHandLength;
  final Color minuteHandColor;
  final double minuteHandWidth;
  final double minuteHandLength;
  final Color secondHandColor;
  final double secondHandWidth;
  final double secondHandLength;

  const AnalogClock({
    Key? key,
    this.hourHandColor = Colors.black,
    this.hourHandWidth = 4.0,
    this.hourHandLength = 0.5,
    this.minuteHandColor = Colors.black,
    this.minuteHandWidth = 2.0,
    this.minuteHandLength = 0.7,
    this.secondHandColor = Colors.red,
    this.secondHandWidth = 1.0,
    this.secondHandLength = 0.8,
  }) : super(key: key);

  @override
  AnalogClockState createState() => AnalogClockState();
}

class AnalogClockState extends State<AnalogClock> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer =
        Timer.periodic(const Duration(seconds: 1), (timer) => setState(() {}));
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _AnalogClockPainter(
        hourHandColor: widget.hourHandColor,
        hourHandWidth: widget.hourHandWidth,
        hourHandLength: widget.hourHandLength,
        minuteHandColor: widget.minuteHandColor,
        minuteHandWidth: widget.minuteHandWidth,
        minuteHandLength: widget.minuteHandLength,
        secondHandColor: widget.secondHandColor,
        secondHandWidth: widget.secondHandWidth,
        secondHandLength: widget.secondHandLength,
      ),
      size: const Size(160 - 6 * 2, 160 - 6 * 2), // 여기서 크기를 조절합니다.
    );
  }
}

class _AnalogClockPainter extends CustomPainter {
  final Color hourHandColor;
  final double hourHandWidth;
  final double hourHandLength;
  final Color minuteHandColor;
  final double minuteHandWidth;
  final double minuteHandLength;
  final Color secondHandColor;
  final double secondHandWidth;
  final double secondHandLength;

  _AnalogClockPainter({
    required this.hourHandColor,
    required this.hourHandWidth,
    required this.hourHandLength,
    required this.minuteHandColor,
    required this.minuteHandWidth,
    required this.minuteHandLength,
    required this.secondHandColor,
    required this.secondHandWidth,
    required this.secondHandLength,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final now = DateTime.now();

    // Draw hour hand
    final hourAngle =
        (now.hour * 60 + now.minute) / (12 * 60) * 2 * pi - pi / 2;
    final hourHandOffset = Offset(cos(hourAngle) * size.width * hourHandLength,
            sin(hourAngle) * size.height * hourHandLength) +
        center;
    final hourHandPaint = Paint()
      ..color = hourHandColor
      ..strokeWidth = hourHandWidth
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(center, hourHandOffset, hourHandPaint);

    // Draw minute hand
    final minuteAngle =
        (now.minute * 60 + now.second) / (60 * 60) * 2 * pi - pi / 2;
    final minuteHandOffset = Offset(
            cos(minuteAngle) * size.width * minuteHandLength,
            sin(minuteAngle) * size.height * minuteHandLength) +
        center;
    final minuteHandPaint = Paint()
      ..color = minuteHandColor
      ..strokeWidth = minuteHandWidth
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(center, minuteHandOffset, minuteHandPaint);

    // Draw second hand
    final secondAngle = now.second / 60 * 2 * pi - pi / 2;
    final secondHandOffset = Offset(
            cos(secondAngle) * size.width * secondHandLength,
            sin(secondAngle) * size.height * secondHandLength) +
        center;
    final secondHandPaint = Paint()
      ..color = secondHandColor
      ..strokeWidth = secondHandWidth
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(center, secondHandOffset, secondHandPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
