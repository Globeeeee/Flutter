import 'dart:io';

void main() {
  final todoList = <String>[];

  while (true) {
    print('''
    Choose an option:
    1. Add a task
    2. Remove a task
    3. View tasks
    4. Exit
    ''');

    var choice = int.tryParse(stdin.readLineSync() ?? '');

    switch (choice) {
      case 1:
        addTask(todoList);
        break;
      case 2:
        removeTask(todoList);
        break;
      case 3:
        viewTasks(todoList);
        break;
      case 4:
        exit(0);
      default:
        print('Invalid option. Please choose a number between 1 and 4.');
    }
  }
}

void addTask(List<String> todoList) {
  print('Enter the task:');
  var task = stdin.readLineSync();
  todoList.add(task!);
  print('Task added successfully.');
}

void removeTask(List<String> todoList) {
  if (todoList.isEmpty) {
    print('There are no tasks to remove.');
    return;
  }

  print('Enter the index of the task to remove:');
  viewTasks(todoList);

  var index = int.tryParse(stdin.readLineSync() ?? '');
  if (index != null && index >= 0 && index < todoList.length) {
    var removedTask = todoList.removeAt(index);
    print('Task "$removedTask" removed successfully.');
  } else {
    print('Invalid index. Please enter a valid index.');
  }
}

void viewTasks(List<String> todoList) {
  if (todoList.isEmpty) {
    print('No tasks available.');
  } else {
    print('Tasks:');
    for (var i = 0; i < todoList.length; i++) {
      print('$i. ${todoList[i]}');
    }
  }
}
