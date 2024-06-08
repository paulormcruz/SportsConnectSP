import 'package:flutter/material.dart';
import 'package:sportsconnectsp/carteirinha.dart';
import 'package:sportsconnectsp/feedback_dados.dart';
import 'package:sportsconnectsp/main.dart';

void main() {
  runApp(const FeedbackApp());
}

class FeedbackModel {
  String nome;
  String email;
  String feedbackText;

  FeedbackModel({
    required this.nome,
    required this.email,
    required this.feedbackText,
  });
}

class FeedbackApp extends StatelessWidget {
  const FeedbackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedback',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FeedbackForm(),
      routes: {
        '/WelcomeScreen': (context) => const WelcomeScreen(),
        '/feedback': (context) => const FeedbackApp(),
        '/Carteirinha': (context) => const Carteirinha(),
      },
    );
  }
}

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _feedbackController = TextEditingController();

  void _submitFeedback() {
    if (_formKey.currentState?.validate() ?? false) {
      final feedback = FeedbackModel(
        nome: _nameController.text,
        email: _emailController.text,
        feedbackText: _feedbackController.text,
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FeedbackDisplay(feedback: feedback),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deixe sua opinião!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nome:'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Digite seu nome';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'E-mail:'),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return 'Digite seu e-mail';
                  }
                  if(!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'E-mail inválido, tente novamente!';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _feedbackController,
                decoration: const InputDecoration(labelText: 'Feedback:'),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Escreva seu feedback';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitFeedback,
                child: const Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Positioned(
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
    );
  }
}