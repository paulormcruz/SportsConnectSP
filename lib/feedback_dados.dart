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
      backgroundColor: const Color.fromARGB(255, 125, 192, 223),
    ),
    backgroundColor: Colors.lightBlue[50],
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'Nome: ',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: feedback.nome,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              text: 'E-mail: ',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: feedback.email, 
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Feedback:',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 4),
          Text(
            feedback.feedbackText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                _showConfirmationDialog(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, 
                backgroundColor: const Color.fromARGB(255, 127, 184, 231),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Confirmar',
                style: TextStyle(fontSize: 19),
              ),
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
          title: const Text('Confirmação'),
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