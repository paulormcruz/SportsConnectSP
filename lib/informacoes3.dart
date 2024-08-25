import 'package:flutter/material.dart';
import 'package:sportsconnectsp/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Informacoes3(),
    );
  }
}

class Informacoes3 extends StatelessWidget {
  const Informacoes3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: const Color(0xFF8BC34A), // Cor de fundo verde
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'INFORMAÇÕES SOBRE OS CENTROS ESPORTIVOS',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0), // Espaço entre o título e a linha
                  const SizedBox(
                    width: 200.0, // Largura da linha
                    child: Divider(
                      color: Color(0xFFC0C0C0), // Cor da linha prata
                      thickness: 2.0, // Espessura da linha
                    ),
                  ),
                  const SizedBox(height: 16.0), // Espaço entre a linha e o parágrafo
                  RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      text: 'Os centros esportivos desempenham um papel crucial no contexto urbano de São Paulo, trazendo uma série de benefícios para a cidade e seus habitantes.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        height: 1.6, // Ajuste o espaçamento entre linhas aqui
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0), // Espaço entre o parágrafo e os cards
                  // Adicionando os cards
                  Card(
                    color: const Color(0xFFD0DFD6), // Cor de fundo dos cards
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          // Imagem no lado esquerdo
                          Image.asset(
                            'assets/bem1.png', // Caminho para a imagem
                            width: 200, // Largura da imagem
                            height: 200, // Altura da imagem
                          ),
                          const SizedBox(width: 16.0), // Espaço entre a imagem e a mensagem
                          // Mensagem no lado direito
                          const Text(
                            'BEM-ESTAR',
                            style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0), // Espaço entre os cards
                  Card(
                    color: const Color(0xFFD0DFD6), // Cor de fundo dos cards
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          // Texto no lado esquerdo com quebra de linha
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'INCLUSÃO\n',
                                  style: TextStyle(
                                    fontSize: 32.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'SOCIAL',
                                  style: TextStyle(
                                    fontSize: 32.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16.0), // Espaço entre o texto e a imagem
                          const Spacer(), // Espaço extra para empurrar a imagem para a direita
                          // Imagem no lado direito
                          Image.asset(
                            'assets/inclusao.png', // Caminho para a imagem
                            width: 200, // Largura da imagem
                            height: 200, // Altura da imagem
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0), // Espaço entre os cards
                  Card(
                    color: const Color(0xFFD0DFD6), // Cor de fundo dos cards
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          // Imagem no lado esquerdo
                          Image.asset(
                            'assets/diversidade.png', // Caminho para a imagem
                            width: 200, // Largura da imagem
                            height: 200, // Altura da imagem
                          ),
                          const SizedBox(width: 16.0), // Espaço entre a imagem e o texto
                          // Texto no lado direito com quebra de linha
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'DIVERSIDADE\n',
                                  style: TextStyle(
                                    fontSize: 32.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'CULTURAL',
                                  style: TextStyle(
                                    fontSize: 32.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                // Navegar para a próxima tela
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}