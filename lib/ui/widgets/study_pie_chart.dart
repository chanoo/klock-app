import 'dart:math';

import 'package:flutter/material.dart';
import 'package:klock_app/data/study_session_data.dart';

class StudyPieChart extends CustomPainter {
  final List<StudySessionData> studySessions;
  final double doughnutThickness;
  final DateTime date;

  StudyPieChart({
    required this.studySessions,
    required this.doughnutThickness,
    required this.date,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width;
    final strokeWidth = doughnutThickness;

    final paintMorning = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = Colors.orange;

    final paintAfternoon = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = Colors.blue;

    final paintBreakMorning = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = Colors.orange.withOpacity(0.5);

    final paintBreakAfternoon = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = Colors.blue.withOpacity(0.5);

    final paintBeforeAfternoon = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = Colors.blue.withOpacity(0.25);

    List<StudySessionData> unusedTimePeriods = _getUnusedTimePeriods();

    // Draw a light morning color arc for the entire morning time
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - strokeWidth),
      _timeToRadians(DateTime(date.year, date.month, date.day, 0, 0, 0)),
      _timeToRadians(DateTime(date.year, date.month, date.day, 11, 59, 59)),
      false,
      paintBreakMorning,
    );

    // Draw a light afternoon color arc for the entire afternoon time before it starts
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      _timeToRadians(DateTime(date.year, date.month, date.day, 12, 0, 0)),
      _timeToRadians(DateTime(date.year, date.month, date.day, 23, 59, 59)),
      false,
      paintBeforeAfternoon,
    );

    for (StudySessionData session in studySessions) {
      // Convert the session times to radians
      final startAngle = _timeToRadians(session.startTime);
      final endAngle = _timeToRadians(session.endTime);

      // Determine if the session is in the morning or afternoon
      final isMorning = session.startTime.hour < 12;

      // Set the color for the session
      final paint = isMorning ? paintMorning : paintAfternoon;

      // Calculate the inner or outer radius based on the time of day
      final sessionRadius = isMorning ? radius - strokeWidth : radius;

      // Draw the session arc
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: sessionRadius),
        startAngle,
        endAngle - startAngle,
        false,
        paint,
      );
    }

    for (StudySessionData unusedSession in unusedTimePeriods) {
      // Convert the unused session times to radians
      final startAngle = _timeToRadians(unusedSession.startTime);
      final endAngle = _timeToRadians(unusedSession.endTime);

      // Determine if the unused session is in the morning or afternoon
      final isMorning = unusedSession.startTime.hour < 12;

      // Check if the unused session is a dummy session
      final isDummySession = unusedSession.startTime.minute == 59 &&
          unusedSession.endTime.minute == 0;

      // Set the color for the unused session
      final paint = isMorning ? paintBreakMorning : paintBreakAfternoon;

      // Calculate the inner or outer radius based on the time of day
      final sessionRadius = isMorning ? radius - strokeWidth : radius;

      // Draw the unused session arc
      if (!isDummySession && !(isMorning && unusedSession.endTime.hour >= 12)) {
        canvas.drawArc(
          Rect.fromCircle(center: center, radius: sessionRadius),
          startAngle,
          endAngle - startAngle,
          false,
          paint,
        );
      }
    }
  }

  List<StudySessionData> _getUnusedTimePeriods() {
    List<StudySessionData> unusedTimePeriods = [];
    DateTime currentTime = DateTime(date.year, date.month, date.day, 0, 0, 0);
    DateTime endTime = DateTime(date.year, date.month, date.day, 23, 59, 59);

    for (StudySessionData session in studySessions) {
      if (session.startTime.isAfter(currentTime)) {
        unusedTimePeriods.add(StudySessionData(
            startTime: currentTime, endTime: session.startTime));
      }
      currentTime = session.endTime;
    }

    if (endTime.isAfter(currentTime)) {
      unusedTimePeriods
          .add(StudySessionData(startTime: currentTime, endTime: endTime));
    }

    // Insert a dummy session at noon for a smoother transition
    unusedTimePeriods.add(StudySessionData(
        startTime: DateTime(date.year, date.month, date.day, 11, 59, 59),
        endTime: DateTime(date.year, date.month, date.day, 12, 0, 0)));

    return unusedTimePeriods;
  }

  double _timeToRadians(DateTime time) {
    final totalMinutes = time.hour * 60 + time.minute;
    final ratio = totalMinutes / (12 * 60);
    return -pi / 2 + ratio * 2 * pi;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
