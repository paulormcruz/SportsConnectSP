import 'package:flutter/material.dart';
import 'package:sportsconnectsp/feedback.dart';
import 'package:sportsconnectsp/informacoes1.dart';
import 'package:sportsconnectsp/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/WelcomeScreen': (context) => const WelcomeScreen(),
        '/feedback': (context) => const FeedbackApp(),
        '/Carteirinha': (context) => const Carteirinha(),
        '/Informações': (context) => const Informacoes1()
      },
    );
  }
}

class Carteirinha extends StatelessWidget {
  const Carteirinha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0C0C0),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: const Text(
              'COMO SOLICITAR A CARTEIRINHA?',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Column(
            children: [
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 8.0), 
                child: Text(
                  'Para usufruir desses espaços públicos é preciso fazer uma carteirinha de acesso, cujos trâmites podem ser realizados presencialmente ou online.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Container(
                width: 1200,
                height: 1500,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  image: const DecorationImage(
                    image: AssetImage('run.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20), 
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'DOCUMENTOS NECESSÁRIOS:',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}