import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  final _mybox = Hive.box("mybox");

  //run this method if this is the first time opening this app

  void createinitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false]
    ];
  }

//load the data from the database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  void updateDatabse() {
    _mybox.put("TODOLIST", toDoList);
  }
}
