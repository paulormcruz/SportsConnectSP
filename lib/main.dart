import 'package:sportsconnectsp/avaliar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SportsConnectSP',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const WelcomeScreen(),
      routes: {
        '/WelcomeScreen': (context) => const WelcomeScreen(),
        '/avaliar': (context) => const AvaliarApp(),
      },
    );
  }
}


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(),
        backgroundColor: const Color.fromARGB(255, 120, 127, 134), 
      ),
      body: Stack(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/LOGO.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 80), // Add padding to the top
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                padding: const EdgeInsets.all(20),
                child: const Column(
                  children: [
                    Text(
                      'BEM-VINDOS!',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'O aplicativo "SportsConnectSP" tem como objetivo disponibilizar uma variedade de informações sobre os Centros Esportivos espalhados pela cidade de São Paulo, ou seja, sua importância para população, tal como suas atividades e aulas que o mesmo disponibiliza para os moradores.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(),
              child: SizedBox(
                height: 180,
                child: Image.asset(
                  'assets/FIGURA.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(
                'Home',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/WelcomeScreen');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.info_rounded),
              title: const Text(
                'Informações',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/information');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.fitness_center),
              title: const Text(
                'Unidades de CEs por região',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/sports_centers');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.help_center),
              title: const Text(
                'Como solicitar a carteirinha?',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/how_to_request');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.star_rate),
              title: const Text(
                'Avaliar nosso app',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/avaliar');
              },
            ),
          ],
        ),
      ),
    );
  }
}