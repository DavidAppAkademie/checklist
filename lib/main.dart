import 'package:checklist/src/app.dart';
import 'package:checklist/src/data/database_repository.dart';
import 'package:checklist/src/data/shared_prefs_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final DatabaseRepository databaseRepository = SharedPrefsDatabase(prefs);
  runApp(App(databaseRepository: databaseRepository));
}
