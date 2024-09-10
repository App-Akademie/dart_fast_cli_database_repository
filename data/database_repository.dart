import '../models/problem.dart';
import '../models/user.dart';

abstract class DatabaseRepository {
  // Einen User zur App hinzufügen (registieren) (addUser / createUser)
  void addUser(String userName, String password);
  // Die Daten eines Users anpassen (editUser)
  void editUser(User user);
  // Username ändern (changeUserName)

  // Logindaten eines Benutzers überprüfen (checkUserCredentials)
  bool checkUserCredentials(String userName, String password);
  // Code-Aufgabe erstellen (createProblem)
  // Code-Aufgabe löschen (deleteProblem)
  // Prüfung einer Lösung (checkSolution)
  bool checkSolution(Problem problem, String solution);
  // Code-Aufgabe holen (getNextProblem)
  Problem getNextProblem();
  // Alle Code-Aufgaben holen
  List<Problem> getAllProblems();
}
