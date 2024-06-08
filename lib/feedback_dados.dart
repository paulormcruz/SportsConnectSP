import 'package:flutter/material.dart';
import 'package:sportsconnectsp/feedback.dart';

class FeedbackDisplay extends StatelessWidget {
  final FeedbackModel feedback;

  const FeedbackDisplay({super.key, required this.feedback});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirmação!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nome: ${feedback.nome}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Email: ${feedback.email}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            const Text(
              'Feedback:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 4),
            Text(
              feedback.feedbackText,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _showConfirmationDialog(context);
                },
                child: const Text('Confirmar'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confimação'),
          content: const Text('Está ciente em enviar esse feedback?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: const Text('Não'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
                Navigator.of(context).pop(); 
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Feedback enviado com sucesso! 😉')),
                );
              },
              child: const Text('Sim'),
            ),
          ],
        );
      },
    );
  }
}