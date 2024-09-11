import '../models/problem.dart';
import '../models/user.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  // Der Programmierer soll von außen keinen direkten Zugriff haben.
  List<User> _users = [User(userName: "kai", password: "passwort")];
  List<Problem> _problems = [];

  @override
  List<User> getAllUsers() {
    return _users;
  }

  @override
  void addUser(String newUserName, String newPassword) {
    User newUser = User(userName: newUserName, password: newPassword);
    _users.add(newUser);
  }

  @override
  bool checkUserCredentials({
    required String userName,
    required String password,
  }) {
    for (User currentUser in _users) {
      if (currentUser.userName == userName) {
        if (currentUser.password == password) {
          return true;
        } else {
          return false;
        }
      }
    }

    return false;
  }

  @override
  void editUser(User user) {
    // TODO: implement editUser
  }

  @override
  bool checkSolution(Problem problem, String solution) {
    // TODO: implement checkSolution
    throw UnimplementedError();
  }

  @override
  List<Problem> getAllProblems() {
    // TODO: implement getAllProblems
    throw UnimplementedError();
  }

  @override
  Problem getNextProblem() {
    // TODO: implement getNextProblem
    throw UnimplementedError();
  }
}
