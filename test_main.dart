import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'models/user.dart';

// Hier kann man erstellte Klassen etc. zwischentesten, bevor man sie
// in das Hauptprogramm einbaut.
void main() {
  DatabaseRepository testDatabase = MockDatabase();
  testDatabase.addUser("Viktor", "passwort123");
  List<User> allUsers = testDatabase.getAllUsers();
  //testDatabase.checkUserCredentials("Viktor", "17284f")
  printAllUsers(allUsers);

  testDatabase.addUser("Fadi", 'Call Of Duty 11');

  printAllUsers(allUsers);

  bool isLoginDataCorrect = testDatabase.login(
    userName: "Viktor",
    password: "passwort123",
  );
  if (isLoginDataCorrect) {
    print("Login erfolgreich");
  } else {
    print("Falsche Daten angegeben");
  }

  isLoginDataCorrect = testDatabase.login(
    userName: "Fadi",
    password: "",
  );
  if (isLoginDataCorrect) {
    print("Login erfolgreich");
  } else {
    print("Falsche Daten angegeben");
  }
}

void printAllUsers(List<User> allUsers) {
  for (User user in allUsers) {
    print(user);
  }
}
