import 'dart:ffi';
import 'dart:io';
import 'package:dart_application_3/dart_application_3.dart'
    as dart_application_3;

void main(List<String> arguments) {
  // intilaizing todolist
  List<String> todolist = [];
  // intilaizing completedlist
  List<String> completedTasks = [];
  print(
      "you can write done to finish OR write delete to marks a specific task");
  while (true) {
    print("Enter the name of task");
    String? currentTask = stdin.readLineSync()!;
    if (currentTask == 'done') {
      break;
    }
    // Removing task
    if (currentTask == 'delete') {
      print("Enter the number of task you wish to delete");
      int? currentDeltedTask = int.parse(stdin.readLineSync()!);
      if (currentDeltedTask <= todolist.length) {
        delteSpecificSask(currentDeltedTask, todolist, completedTasks);
      }
      break;
    }
    addTodoList(currentTask, todolist);
  }
  print("TO DO LIST");
  displayTodoList(todolist);
  print("COMPLETED TASKS");
  displayTodoList(completedTasks);
}

// Add new task to do list
void addTodoList(String task, List tasks) {
  tasks.add(task);
}

// display all the tasks
void displayTodoList(List tasks) {
  for (var task in tasks) {
    print(task);
  }
}

// delete specific task
void delteSpecificSask(int numberOfTask, List tasks, List completedTasks) {
  // Adding the removing tasks to a new list
  completedTasks.add(tasks[numberOfTask - 1]);
  tasks.removeAt(numberOfTask - 1);
}
