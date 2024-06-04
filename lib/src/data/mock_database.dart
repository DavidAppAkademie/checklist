import 'package:checklist/src/features/checklist/domain/check_item.dart';

import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  // Simulierte Datenbank
  final List<CheckItem> _checkList = [];

  // Methoden der Schablone `DatabaseRepository`
  @override
  void addItem(CheckItem checkItem) {
    _checkList.add(checkItem);
  }

  @override
  void removeItem(CheckItem checkItem) {
    _checkList.remove(checkItem);
  }

  @override
  List<CheckItem> getCheckList() {
    return _checkList;
  }
}
