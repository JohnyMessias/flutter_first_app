import 'package:flutter/material.dart';
import 'package:flutter_inicio/data/task_inherited.dart';
import 'package:flutter_inicio/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue                                  ,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 8, bottom: 80),
        children: TaskInherited.of(context).taskList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (newContext) => FormScreen(taskContext: context,),
          ),
          );
      },
        child: const Icon(Icons.add),
      ),
    );
  }
}