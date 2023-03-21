import '../data/user_data.dart';

class UserRepository {
  List<UserData> users = [
    UserData(name: "John Doe", age: 30),
    UserData(name: "Jane Smith", age: 29),
  ];

  List<UserData> getAllUsers() {
    return users;
  }
}
