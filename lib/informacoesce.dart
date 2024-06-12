// ignore: file_names
import 'package:flutter/material.dart';
// import 'package:sportsconnectsp/carteirinha.dart';
import 'package:sportsconnectsp/main.dart';

void main() {
  runApp(const informacaoce());
}

class informacaoce extends StatelessWidget {
  const informacaoce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Informações',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 150, 39),
          centerTitle: true,
          title: const Text('INFORMAÇÕES SOBRE OS CEs'),
          titleTextStyle: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 34, 150, 39),
        body: Column(
          children: <Widget>[
            const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(' Os Centros Esportivos (CEs) municipais são estruturas públicas que oferecem diversas atividades esportivas para a saúde, bem-estar, lazer da população de todas as regiões de SP.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Image.asset('assets/centro-esportivo.png'),
          const SizedBox(height: 6),

          const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(' Posuem inúmeras aulas e atividades de esportes e lazer para a população, com diversas estruturas esportivas. \n - Piscinas, quadras poliesportivas, campos de futebol, quadra de tênis, pistas de skate/esportes radicais, ginástica, alongamento, caminhada e muito mais.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 16,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WelcomeScreen()),
              );
            },
            color: const Color.fromARGB(255, 255, 255, 255),
            iconSize: 26.0,
            tooltip: 'Voltar',
          ),

          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const infocontinuacao()),
              );
            },
            color: const Color.fromARGB(255, 255, 255, 255),
            iconSize: 26.0,
            tooltip: 'Avançar',
          )
            ],
          )
        ]
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class infocontinuacao extends StatelessWidget {
  const infocontinuacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 34, 150, 39),
          centerTitle: true,
          title: const Text('INFORMAÇÕES SOBRE OS CEs'),
          titleTextStyle: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 34, 150, 39),
        body: Column(
          children: <Widget>[
            const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Os Centros Esportivos em São Paulo oferecem uma ampla variedade de aulas e atividades para atender as necessidades e interesses de diferentes públicos. Algumas modalidades que estão presentes no CEs, respectivamente futebol, artes marciais, atletismo e natação.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/futebol.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/artes-marciais.png'),
              ),
            ]
          ),

          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.asset('assets/atletismo.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/natação.png'),
              ),
            ]
          ),

          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.asset('assets/dança.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/ginastica.png'),
              ),
            ]
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const informacaoce()),
              );
            },
            color: const Color.fromARGB(255, 255, 255, 255),
            iconSize: 26.0,
            tooltip: 'Voltar',
          ),

          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const infofinal()),
              );
            },
            color: const Color.fromARGB(255, 255, 255, 255),
            iconSize: 26.0,
            tooltip: 'Avançar',
          )
            ],
          )
        ]
      ),
    );
  }
}

class infofinal extends StatelessWidget {
  const infofinal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 34, 150, 39),
          centerTitle: true,
          title: const Text('INFORMAÇÕES SOBRE OS CEs'),
          titleTextStyle: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 34, 150, 39),
        body: Column(
          children: <Widget>[
            const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Os Centros Esportivos desempenham um papel crucial no contexto urbano de São Paulo, trazendo uma série de benefícios para a cidade e seus habitantes.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.asset('assets/bem-estar.png'),
              ),
            ]
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.asset('assets/inclusão-social.png'),
              ),
            ]
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.asset('assets/diversidade-cultural.png'),
              ),
            ]
          ),

          const SizedBox(height: 15),
            
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                  );
                }, child: const Text(
                  'Início',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ]
      )
    );
  }
}