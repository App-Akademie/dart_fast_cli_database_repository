import 'dart:io';

void askProblems(bool isUserLoggedIn) {
  // Überprüfen, ob der Benutzer eingeloggt ist.
  // Wenn nein, Meldung ausgeben.
  // Wenn ja, dann Code Snippet zeigen.
  // Abfrage machen, was rauskommt.
  // Je nach Abfrage loben oder noch mal zeigen.
  String exercise = 'void main() { print("Hi")}';
  String solution = '"Hi"';
  bool exerciseSolved = false;

  if (isUserLoggedIn) {
    print("Was gibt der folgende Code aus?");
    print(exercise);
    print("");
    String result = stdin.readLineSync()!;
    if (result == solution) {
      print("Sehr gut! Schön gelöst!");
      exerciseSolved = true;
    } else {
      print("Versuche es noch mal, bitte");
    }
  } else {
    print("Bitte einloggen!");
  }
}
