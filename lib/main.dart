import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:
              x == 5 ? const Color.fromARGB(255, 87, 95, 94) : Colors.grey,
          title: const Center(child: Text('Lucky Draw')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Lottery Wining Numer is 5',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 250,
              width: 305,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: x == 5
                    ? const Color.fromARGB(255, 87, 95, 94)
                    : Colors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: x == 5
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done,
                            color: Colors.green,
                            size: 40,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Congratulaton you won your lucky number is $x',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 17,
                            ),
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 40,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Better luck next time your number is $x \n try again',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor:
              x == 5 ? const Color.fromARGB(255, 87, 95, 94) : Colors.grey,
          onPressed: () {
            x = random.nextInt(7);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
