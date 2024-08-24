import 'package:flutter/material.dart';
import 'package:sportsconnectsp/informacoes2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Informacoes1(),
    );
  }
}

class Informacoes1 extends StatelessWidget {
  const Informacoes1({super.key});

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
                      text: 'Os Centros Esportivos (CEs) municipais são estruturas públicas que oferecem diversas atividades esportivas para a saúde, bem-estar, lazer da população de todas as regiões de São Paulo.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        height: 1.6, // Ajuste o espaçamento entre linhas aqui
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0), // Espaço entre o parágrafo e a imagem
                  Center(
                    child: Image.asset(
                      'assets/foto1_centro.jpeg', // Substitua pelo caminho da sua imagem
                      width: 800, // Largura da imagem
                      height: 300, // Altura da imagem
                    ),
                  ),
                  const SizedBox(height: 16.0), // Espaço entre a imagem e o próximo parágrafo
                  RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      text: 'A proposta dos Centros Esportivos é proporcionar um ambiente seguro e acessível para a prática de atividades físicas, promovendo a integração social e a melhoria da qualidade de vida dos cidadãos.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        height: 1.6, // Ajuste o espaçamento entre linhas aqui
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0), // Espaço entre o segundo parágrafo e o novo texto
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0), // Recuo para a direita
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        text: '• piscinas, quadras poliesportivas, campos de futebol, quadras de tênis, pistas de skate/esportes radicais, ginástica, alongamento, caminhada e muito mais.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          height: 1.6, // Ajuste o espaçamento entre linhas aqui
                        ),
                      ),
                    ),
                  ),
                  // Adicione mais conteúdo aqui, se necessário
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
                  MaterialPageRoute(builder: (context) => const Informacoes2()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}