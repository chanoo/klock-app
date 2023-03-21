import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klock_app/blocs/user/user_event.dart';
import 'package:klock_app/blocs/user/user_bloc.dart';
import 'package:klock_app/ui/widgets/user_list.dart';
import 'package:klock_app/data/user_data.dart';
import 'package:klock_app/domain/user_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userRepository =
        UserRepository(); // Assuming you have a UserRepository class

    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: BlocProvider<UserBloc>(
        create: (context) =>
            UserBloc(userRepository: userRepository)..add(LoadUsers()),
        child: BlocBuilder<UserBloc, List<UserData>>(
          builder: (context, state) {
            return UserList(users: state);
          },
        ),
      ),
    );
  }
}
