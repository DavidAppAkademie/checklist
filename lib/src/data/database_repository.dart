import 'package:checklist/src/features/checklist/domain/check_item.dart';

abstract class DatabaseRepository {
  List<CheckItem> getCheckList();
  void addItem(CheckItem checkItem);
  void removeItem(CheckItem checkItem);
}
