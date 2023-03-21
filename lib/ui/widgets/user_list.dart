import 'package:flutter/material.dart';
import '../../data/user_data.dart';
import '../styles/text_styles.dart';

class UserList extends StatelessWidget {
  final List<UserData> users;

  const UserList({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(users[index].name, style: AppTextStyles.heading1),
          subtitle: Text('Age: ${users[index].age}'),
        );
      },
    );
  }
}
