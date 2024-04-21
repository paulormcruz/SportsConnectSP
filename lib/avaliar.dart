import 'package:flutter/material.dart';
import 'package:sportsconnectsp/main.dart';

void main() {
  runApp(const AvaliarApp());
}

class AvaliarApp extends StatelessWidget {
  const AvaliarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avaliação',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StarRatingScreen(),
      routes: {
        '/WelcomeScreen': (context) => const WelcomeScreen(),
      },
    );
  }
}

class StarRatingScreen extends StatefulWidget {
  const StarRatingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StarRatingScreenState createState() => _StarRatingScreenState();
}

class _StarRatingScreenState extends State<StarRatingScreen> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/fundo.png",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          const Positioned(
            top: 40.0, // Altura a partir do topo
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'AVALIE NOSSO APP!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _rating = index + 1;
                        });
                      },
                      child: Icon(
                        index < _rating ? Icons.star : Icons.star_border,
                        color: Colors.amber,
                        size: 50,
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: const Color.fromARGB(255, 196, 186, 189).withOpacity(0.8),
                        content: const Text(
                          'Obrigado por avaliar! 🌟',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: const Text('Salvar'),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 20,
            child: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/WelcomeScreen');
            },
            icon: const Icon(Icons.arrow_circle_right_rounded),
            iconSize: 42,
          ),
          ),
        ],
      ),
    );
  }
}