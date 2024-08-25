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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Para usufruir desses espaços públicos é preciso fazer uma carteirinha de acesso, cujos trâmites podem ser realizados presencialmente ou online.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('run.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'DOCUMENTOS NECESSÁRIOS:',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5b5b57),
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 100),
                                  child: Text(
                                    'RG',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 180),
                                Text(
                                  'CPF',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 150),
                                Text(
                                  'FOTO 3X4',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 190),
                                Text(
                                  'COMPROVANTE DE ENDEREÇO',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage('assets/rg.jpg'),
                                  width: 500,
                                  height: 200,
                                ),
                                SizedBox(height: 16),
                                Image(
                                  image: AssetImage('assets/cpf.png'),
                                  width: 500,
                                  height: 200,
                                ),
                                SizedBox(height: 16),
                                Image(
                                  image: AssetImage('assets/foto3x4.jpg'),
                                  width: 200,
                                  height: 200,
                                ),
                                SizedBox(height: 16),
                                Image(
                                  image: AssetImage('assets/comprovante.jpg'),
                                  width: 200,
                                  height: 200,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 16,
              right: 16,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
