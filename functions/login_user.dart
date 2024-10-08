// Aufgabe: Benutzer nach Logininformationen fragen und zurückgeben, ob er sich
// erfolgreich eingeloggt hat.
//
// Eingabe(n): Erwarteter Benutzername, erwartetes Passwort.
// Ausgabe: Ob der Benutzer sich korrekt eingeloggt hat.
//
// EinDTs: String, String
// AusDT: bool
//
// Name: loginUser
//
// Funktionskopf machen

import 'dart:io';

import '../data/database_repository.dart';

//bool loginUser(String expectedUserName, String expectedUserPassword) {
bool loginUser(DatabaseRepository databaseRepository) {
  bool didUserLogInCorrectly = false;
  // Benutzername und Passwort abfragen.
  // Schauen, ob es mit gespeicherten Daten übereinstimmt.
  // Wenn ja, dann ist Benutzer eingeloggt.
  // Wenn nein, entsprechende Ausgabe machen.

  String inputUserName = "";
  String inputUserPassword = "";

  // Benutzername und Passwort abfragen.
  stdout.write("Bitte gib deinen Benutzername ein: ");
  inputUserName = stdin.readLineSync()!;
  stdout.write("Bitte gib dein Passwort ein: ");
  inputUserPassword = stdin.readLineSync()!;

  // Schauen, ob es mit gespeicherten Daten übereinstimmt.
  bool didLoginSucceed = databaseRepository.login(
    userName: inputUserName,
    password: inputUserPassword,
  );

  if (didLoginSucceed) {
    print("Du hast dich erfolgreich eingeloggt");
    print("");
    didUserLogInCorrectly = true;
  } else {
    print("Du hast leider deine Daten falsch eingegeben");
    print("");
    didUserLogInCorrectly = false;
  }

  return didUserLogInCorrectly;
}
