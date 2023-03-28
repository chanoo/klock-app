import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klock_app/domain/user_repository.dart';
import 'package:klock_app/data/user_data.dart';
import 'package:klock_app/blocs/user/user_event.dart';

class UserBloc extends Bloc<UserEvent, List<UserData>> {
  final UserRepository userRepository;

  UserBloc({required this.userRepository}) : super([]) {
    on<LoadUsers>(_onLoadUsers);
  }

  Future<void> _onLoadUsers(
      LoadUsers event, Emitter<List<UserData>> emit) async {
    try {
      final users = userRepository.getAllUsers();
      emit(users);
    } catch (e) {
      // Handle any errors that might occur
    }
  }
}
