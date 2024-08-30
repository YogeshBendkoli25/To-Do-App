import 'package:hive/hive.dart';

class ToDoDataBase{
  List todoList =[];

  // reference the box
  final _mybox = Hive.box('mybox');


  // run this method is this 1 st time ever opening this page
  void createInitialData(){
    todoList = [
      ["Do Exercise"],
      ["Stay Fresh"],
    ];
  }


    // load the from database
  void loadData(){
      todoList = _mybox.get("TODOLIST");
  }

  void updateData(){
      _mybox.put("TODOTITLE",todoList);
  }
  }
