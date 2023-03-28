import 'package:klock_app/data/user_data.dart';

class UserRepository {
  List<UserData> users = [
    UserData(name: "John Doe", age: 30),
    UserData(name: "Jane Smith", age: 29),
    UserData(name: "Robert Johnson", age: 42),
    UserData(name: "Emily Davis", age: 29),
    UserData(name: "William Lee", age: 37),
    UserData(name: "Sophia Rodriguez", age: 31),
    UserData(name: "Michael Brown", age: 28),
    UserData(name: "Isabella Garcia", age: 33),
    UserData(name: "David Wilson", age: 39),
    UserData(name: "Ava Perez", age: 24),
    UserData(name: "James Anderson", age: 35),
    UserData(name: "Olivia Taylor", age: 27),
    UserData(name: "John Nguyen", age: 41),
    UserData(name: "Emma Clark", age: 26),
    UserData(name: "Daniel Martin", age: 36),
    UserData(name: "Madison Lee", age: 30),
    UserData(name: "Benjamin Green", age: 32),
    UserData(name: "Chloe Hernandez", age: 28),
    UserData(name: "Ethan Collins", age: 25),
    UserData(name: "Natalie Scott", age: 30),
    UserData(name: "Jacob Lewis", age: 34),
    UserData(name: "Grace Hall", age: 27),
    UserData(name: "Noah Baker", age: 31),
    UserData(name: "Lily Wright", age: 26),
    UserData(name: "William Carter", age: 29),
    UserData(name: "Ella Allen", age: 33),
    UserData(name: "Michael Gonzalez", age: 38),
    UserData(name: "Sofia Nelson", age: 24),
    UserData(name: "Matthew Parker", age: 35),
    UserData(name: "Victoria King", age: 27),
    UserData(name: "Anthony Cooper", age: 31),
    UserData(name: "Audrey Hill", age: 29),
    UserData(name: "Andrew Diaz", age: 26),
    UserData(name: "Hailey Adams", age: 30),
    UserData(name: "Christopher Wright", age: 32),
    UserData(name: "Madeline Perez", age: 28),
    UserData(name: "Joshua Campbell", age: 33),
    UserData(name: "Avery Rivera", age: 25),
    UserData(name: "Mia Mitchell", age: 31),
    UserData(name: "Elijah Evans", age: 30),
    UserData(name: "Aaliyah Martinez", age: 26),
    UserData(name: "Mason Reed", age: 29),
  ];

  List<UserData> getAllUsers() {
    return users;
  }
}
