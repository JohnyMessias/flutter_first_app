import 'package:flutter/material.dart';
import 'package:flutter_inicio/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Task> taskList = [
    Task('Aprender Flutter', 'assets/images/mascote_kotlin.webp', 3),
    Task('Andar de Bike', 'assets/images/img_bike.webp', 2),
    Task('Meditar', 'assets/images/img_meditar.webp', 5),
    Task('Ler', 'assets/images/img_ler.webp', 4),
    Task('Jogar', 'assets/images/img_kako_gaming.webp', 0),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited old) {
    return old.taskList.length != taskList.length;
  }
}
