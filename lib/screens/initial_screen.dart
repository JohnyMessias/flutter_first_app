import 'package:flutter/material.dart';
import 'package:flutter_inicio/components/task.dart';
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
        children: const [
          Task('Aprender Flutter', 'assets/images/mascote_kotlin.webp', 3),
          Task('Andar de Bike', 'assets/images/img_bike.webp', 2),
          Task('Meditar', 'assets/images/img_meditar.webp', 5),
          Task('Ler', 'assets/images/img_ler.webp', 4),
          Task('Jogar', 'assets/images/img_kako_gaming.webp', 0),
          SizedBox(height: 80,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen(),
          ),
          );
      },
        child: const Icon(Icons.add),
      ),
    );
  }
}