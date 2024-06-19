import 'package:flutter/material.dart';
import 'package:to_do/models/Task.dart';

class ToDoList extends ChangeNotifier {
  List<Task> todolist = [];

  void addTask(String task) {
    todolist.add(Task(task, false));
    notifyListeners();
  }


  Function(bool?)? taskCompleted(int index) {
    todolist[index].isCompleted = !todolist[index].isCompleted;
    notifyListeners();
    return null;
  }

  void deleteTask(int index) {
    todolist.removeAt(index);
    notifyListeners();
  }
}
