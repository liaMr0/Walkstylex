import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  InfoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 20, 20, 48),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 20, 20, 48),
          title: const Text('Acerca de:',
              style: TextStyle(fontStyle: FontStyle.italic)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('WalkStylex', style: Theme.of(context).textTheme.bodyLarge),
              Container(
                  padding: const EdgeInsets.all(20),
                  height: 200.0,
                  width: 200.0,
                  child: const Image(
                      image: AssetImage('assets/icons/icon4.png'),
                      fit: BoxFit.fitWidth)),
              Text(
                'v1.0\nDesarrollado por:\nLianet Moreira Rodríguez\n2023',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
