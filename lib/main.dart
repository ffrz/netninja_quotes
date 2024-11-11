import 'package:flutter/material.dart';
import 'quote_card.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Fahmi Fauzi Rahman',
        text: 'Boleh lelah dan berhenti sejenak asal tidak menyerah.'),
    Quote(
        author: 'Fahmi Fauzi Rahman',
        text: 'Berusahalah menjadi yang terbaik diantara para pemenang.'),
    Quote(
        author: 'Fahmi Fauzi Rahman',
        text: 'Nikmatilah masa muda dengan bersyukur dan beribadah.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title:
            const Text('Awesome Quotes', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            children: quotes.map((quote) {
          return QuoteCard(quote: quote, deleteCallback: () {
            setState(() {
              quotes.remove(quote);
            });
          });
        }).toList()),
      ),
    );
  }
}

