// lib/ui/screens/study_sessions_screen.dart
import 'package:flutter/material.dart';
import 'package:klock_app/blocs/study_session/study_session_bloc.dart';
import 'package:klock_app/blocs/study_session/study_session_event.dart';
import 'package:klock_app/data/study_session_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klock_app/domain/study_session_repository.dart';
import 'package:klock_app/ui/widgets/study_pie_chart.dart';
import 'package:klock_app/ui/widgets/analog_clock.dart'; // Import the AnalogClock widget

class StudySessionsScreen extends StatefulWidget {
  const StudySessionsScreen({Key? key}) : super(key: key);

  @override
  StudySessionsScreenState createState() => StudySessionsScreenState();
}

class StudySessionsScreenState extends State<StudySessionsScreen> {
  @override
  Widget build(BuildContext context) {
    final studySessionRepository = StudySessionRepository();
    return BlocProvider(
      create: (_) =>
          StudySessionBloc(studySessionRepository: studySessionRepository)
            ..add(LoadStudySessions()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Study Sessions')),
        body: BlocBuilder<StudySessionBloc, List<StudySessionData>>(
          builder: (context, studySessions) {
            return Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    painter: StudyPieChart(
                      studySessions: studySessions,
                      doughnutThickness: 6,
                      date: DateTime.now(),
                    ),
                    size: const Size(150, 150),
                  ),
                  const AnalogClock(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
