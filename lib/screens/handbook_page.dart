import 'package:flutter/material.dart';
import 'package:sun_shield/widgets/book.dart';

class HandBookPage extends StatelessWidget {
  const HandBookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mock data
    const List books = <Map>[
      {
        'id': 1,
        'title': "Is Pig killer legal?",
        'description': "Pig killer used by young buffalow is illegal",
      },
      {
        'id': 2,
        'title': "Is Pig killer legal?",
        'description': "Pig killer used by young buffalow is illegal",
      }
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('HandBook'),
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) => Book(
                  title: books[index]['title'],
                  description: books[index]['description'],
                  onPressed: () {},
                )));
  }
}
