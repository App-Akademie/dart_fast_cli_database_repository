import 'dart:io';

import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'functions/ask_problems.dart';
import 'functions/login_user.dart';

// Login, damit der Fortschritt online gespeichert wird.
// Anzeigen von Code Snippets, bei denen gesagt werden soll, was rauskommt.
// Ein Exerciseboard, auf dem man sieht, wie viele und welche Aufgaben man gemacht hat.

void main() {
  DatabaseRepository databaseRepository = MockDatabase();

  // Login, damit der Fortschritt online gespeichert wird.
  // Anzeigen von Code Snippets, bei denen gesagt werden soll, was rauskommt.
  // Ein Exerciseboard, auf dem man sieht, wie viele und welche Aufgaben man gemacht hat.
  print("Willkommen bei Dart Fast CLI.");
  print(
      "Hier wird dir Code gezeigt, von dem du sagen sollst, ob er richtig oder falsch ist.");

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
      // Programm soll beendet werden.
      case "b" || "B":
        isProgramRunning = false;
      // Benutzer soll sich mit Username und Passwort einloggen können.
      case "l" || "L":
        // Funktion braucht:
        // Username + Passwort
        // Funktion gibt zurück:
        // Ob Benutzer erfolgreich eingeloggt.
        //isUserLoggedIn = loginUser(expectedUserName, expecedUserPassword);
        isUserLoggedIn = loginUser(databaseRepository);

      // Anzeigen von Code Snippets, bei denen gesagt werden soll, was rauskommt.
      case "s" || "S":
        askProblems(isUserLoggedIn);
    }

    // Anzeige abhängig von Eingabe.
  }
}
