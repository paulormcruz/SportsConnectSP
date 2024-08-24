import 'package:flutter/material.dart';
import 'package:sportsconnectsp/informacoes3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Informacoes2(),
    );
  }
}

class Informacoes2 extends StatelessWidget {
  const Informacoes2({super.key});

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
                      text: 'Os centros esportivos em São Paulo oferecem uma ampla variedade de aulas e atividades para atender às necessidades e interesses de diferentes públicos.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        height: 1.6, // Ajuste o espaçamento entre linhas aqui
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0), // Espaço entre o parágrafo e as imagens
                  GridView.count(
                    crossAxisCount: 2, // Duas colunas
                    crossAxisSpacing: 16.0, // Espaçamento horizontal entre imagens
                    mainAxisSpacing: 16.0, // Espaçamento vertical entre imagens
                    shrinkWrap: true, // Faz o GridView ajustar seu tamanho ao conteúdo
                    physics: const NeverScrollableScrollPhysics(), // Desativa a rolagem do GridView
                    children: [
                      _buildImageWithLabel('NATAÇÃO', 'assets/natacao1.png'),
                      _buildImageWithLabel('FUTEBOL', 'assets/futebol1.png'),
                      _buildImageWithLabel('ATLETISMO', 'assets/atletismo1.png'),
                      _buildImageWithLabel('LUTAS MARCIAIS', 'assets/lutas1.png'),
                      _buildImageWithLabel('DANÇA', 'assets/danca1.png'),
                      _buildImageWithLabel('GINÁSTICA', 'assets/ginastica1.png'),
                    ],
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
                  MaterialPageRoute(builder: (context) => const Informacoes3()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageWithLabel(String label, String imagePath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 180.0, // Aumenta a largura das imagens
          height: 180.0, // Aumenta a altura das imagens
        ),
        const SizedBox(height: 8.0), // Espaço entre a imagem e o nome
        Text(
          label,
          style: const TextStyle(
            color: Colors.black, // Alterado para preto
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}