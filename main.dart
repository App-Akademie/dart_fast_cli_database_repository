import 'dart:io';

import 'login_user.dart';

// Login, damit der Fortschritt online gespeichert wird.
// Anzeigen von Code Snippets, bei denen gesagt werden soll, was rauskommt.
// Ein Exerciseboard, auf dem man sieht, wie viele und welche Aufgaben man gemacht hat.

void main() {
  // Login, damit der Fortschritt online gespeichert wird.
  // Anzeigen von Code Snippets, bei denen gesagt werden soll, was rauskommt.
  // Ein Exerciseboard, auf dem man sieht, wie viele und welche Aufgaben man gemacht hat.
  print("Willkommen bei Dart Fast CLI.");
  print(
      "Hier wird dir Code gezeigt, von dem du sagen sollst, ob er richtig oder falsch ist.");

  const String expectedUserName = "kai";
  const String expecedUserPassword = "passwort";
  bool isUserLoggedIn = false;

  // Wie lange läuft das Programm?
  bool isProgramRunning = true;
  while (isProgramRunning) {
    if (isUserLoggedIn) {
      print("Was möchtest du tun? Programm (b)eenden, (S)nippet anzeigen.");
    } else {
      print(
          "Was möchtest du tun? Programm (b)eenden, (L)ogin, (S)nippet anzeigen.");
    }
    // Eingabe des Benutzers.
    String userChoiceInput = stdin.readLineSync()!;

    switch (userChoiceInput) {
      case "b" || "B":
        isProgramRunning = false;
      // Benutzer soll sich mit Username und Passwort einloggen können.
      case "l" || "L":
        // Funktion braucht:
        // Username + Passwort
        // Funktion gibt zurück:
        // Ob Benutzer erfolgreich eingeloggt.
        isUserLoggedIn = loginUser(expectedUserName, expecedUserPassword);

      // Anzeigen von Code Snippets, bei denen gesagt werden soll, was rauskommt.
      case "s" || "S":
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

    // Anzeige abhängig von Eingabe.
  }
}
