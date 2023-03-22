import 'package:klock_app/data/study_session_data.dart';

class StudySessionRepository {
  List<StudySessionData> getStudySessions() {
    // API 호출 또는 로컬 스토리지에서 공부 시간 로드
    // 임시로 하드 코딩된 데이터를 반환합니다.
    return [
      StudySessionData(
          startTime: DateTime.parse('2023-03-22 08:30:00'),
          endTime: DateTime.parse('2023-03-22 09:00:00')),
      StudySessionData(
          startTime: DateTime.parse('2023-03-22 09:15:00'),
          endTime: DateTime.parse('2023-03-22 10:00:00')),
      StudySessionData(
          startTime: DateTime.parse('2023-03-22 10:15:00'),
          endTime: DateTime.parse('2023-03-22 11:00:00')),
      StudySessionData(
          startTime: DateTime.parse('2023-03-22 11:15:00'),
          endTime: DateTime.parse('2023-03-22 12:34:00')),
      StudySessionData(
          startTime: DateTime.parse('2023-03-22 13:00:00'),
          endTime: DateTime.parse('2023-03-22 14:00:00')),
      StudySessionData(
          startTime: DateTime.parse('2023-03-22 15:00:00'),
          endTime: DateTime.parse('2023-03-22 16:00:00')),
      StudySessionData(
          startTime: DateTime.parse('2023-03-22 17:00:00'),
          endTime: DateTime.parse('2023-03-22 18:00:00')),
      StudySessionData(
          startTime: DateTime.parse('2023-03-22 19:00:00'),
          endTime: DateTime.parse('2023-03-22 20:00:00')),
      StudySessionData(
          startTime: DateTime.parse('2023-03-22 20:15:00'),
          endTime: DateTime.parse('2023-03-22 21:00:00')),
      StudySessionData(
          startTime: DateTime.parse('2023-03-22 21:15:00'),
          endTime: DateTime.parse('2023-03-22 22:00:00')),
    ];
  }
}
