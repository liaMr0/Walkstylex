import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:tienda_zapatos/offer_display.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 48),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  'assets/icons/icon4.png',
                  width: MediaQuery.of(context).size.width / 2,
                  height: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 70.0),
                child: SlideInRight(
                  from: 300,
                  duration: const Duration(seconds: 1),
                  child: const Text(
                    'Bienvenido',
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.white,
                  shape: const CircleBorder(),
                  fixedSize: const Size(50, 50),
                  padding: const EdgeInsets.all(10),
                ),
                child: const Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OfferDisplay(),
                      ));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
