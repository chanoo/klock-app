import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klock_app/data/study_session_data.dart';
import 'package:klock_app/domain/study_session_repository.dart';
import 'package:klock_app/blocs/study_session/study_session_event.dart';

// StudySessionBloc 클래스는 StudySessionEvent를 처리하여
// 앱의 상태를 관리하는 BLoC입니다. 이 클래스는 List<StudySessionData>를 상태로 가지며,
// StudySessionRepository를 통해 공부 세션 데이터를 가져옵니다.
class StudySessionBloc extends Bloc<StudySessionEvent, List<StudySessionData>> {
  final StudySessionRepository studySessionRepository;

  // 생성자에서 StudySessionRepository를 주입받아 초기화하고,
  // LoadStudySessions 이벤트에 대한 처리기를 등록합니다.
  StudySessionBloc({required this.studySessionRepository}) : super([]) {
    on<LoadStudySessions>(_onLoadStudySessions);
  }

  // _onLoadStudySessions 함수는 LoadStudySessions 이벤트를 처리하고,
  // StudySessionRepository를 통해 공부 세션 데이터를 가져온 다음,
  // 새로운 상태를 emit하는 비동기 함수입니다.
  Future<void> _onLoadStudySessions(
      LoadStudySessions event, Emitter<List<StudySessionData>> emit) async {
    try {
      final studySessions = studySessionRepository.getStudySessions();
      emit(studySessions);
    } catch (e) {
      // Handle any errors that might occur
    }
  }
}
