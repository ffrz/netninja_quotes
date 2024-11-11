import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback deleteCallback;
  const QuoteCard({
    required this.quote,
    required this.deleteCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text, style: TextStyle(color: Colors.grey[600])),
            const SizedBox(height: 6.0),
            Text(quote.author, style: TextStyle(color: Colors.grey[800])),
            const SizedBox(height: 6.0),
            TextButton.icon(
              icon: const Icon(Icons.delete),
              label: const Text('Delete'),
              onPressed: deleteCallback,
            )
          ],
        ),
      ),
    );
  }
}
