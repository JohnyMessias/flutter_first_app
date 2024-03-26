import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(color: Colors.red, width: 100, height: 100, ),
              Container(color: Colors.orange, width: 100, height: 100,),
              Container(color: Colors.yellow, width: 100, height: 100,),
            ]
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(color: Colors.green, width: 100, height: 100, ),
              Container(color: Colors.blueGrey, width: 100, height: 100,),
              Container(color: Colors.blue, width: 100, height: 100,),
            ]
        ),
        Container(color: Colors.amberAccent, width: 10000, height: 100,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(color: Colors.purple, width: 100, height: 100, ),
              Container(color: Colors.pinkAccent, width: 100, height: 100,),
              Container(color: Colors.white, width: 100, height: 100,),
            ]
        ),
        ElevatedButton(
          onPressed: (){
            // print('Clicou no botão.');
            },
          child: const Text('Botão para clicar'),
        )
      ],
    );
  }
}
