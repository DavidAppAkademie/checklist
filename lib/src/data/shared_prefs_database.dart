import 'dart:convert';

import 'package:checklist/src/features/checklist/domain/check_item.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'database_repository.dart';

class SharedPrefsDatabase implements DatabaseRepository {
  final SharedPreferences _prefs;

  const SharedPrefsDatabase(this._prefs);

  // Methoden der Schablone `DatabaseRepository`
  @override
  Future<void> addItem(CheckItem checkItem) async {
    final List<CheckItem> checkList = await getCheckList();
    checkList.add(checkItem);
    _prefs.setStringList(
        "checklist", checkList.map((e) => jsonEncode(e.toJson())).toList());
  }

  @override
  Future<void> removeItem(CheckItem checkItem) async {
    final List<CheckItem> checkList = await getCheckList();
    checkList.removeWhere((e) => e.title == checkItem.title);
    _prefs.setStringList(
        "checklist", checkList.map((e) => jsonEncode(e.toJson())).toList());
  }

  @override
  Future<List<CheckItem>> getCheckList() async {
    final List<String> checkListJson = _prefs.getStringList("checklist") ?? [];
    return checkListJson.map((e) => CheckItem.fromJson(jsonDecode(e))).toList();
  }
}
