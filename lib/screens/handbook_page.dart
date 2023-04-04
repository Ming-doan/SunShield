import 'package:flutter/material.dart';
import 'package:sun_shield/widgets/book.dart';
import 'package:sun_shield/models/book.dart';
import 'handbook_detail_page.dart';

class HandBookPage extends StatelessWidget {
  const HandBookPage({Key? key}) : super(key: key);

  void navigateToDetail(BuildContext context, BookModel book) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HandBookDetailPage(
                  book: book,
                )));
  }

  @override
  Widget build(BuildContext context) {
    // Mock data
    List<BookModel> books = [
      BookModel(
          id: "1",
          title: "Is Pig killer legal?",
          description: "Pig killer used by young buffalow is illegal",
          content:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
      BookModel(
          id: "2",
          title: "Is Pig killer legal?",
          description: "Pig killer used by young buffalow is illegal",
          content: "No"),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('HandBook'),
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) => Book(
                title: books[index].title,
                description: books[index].description,
                onPressed: () => navigateToDetail(context, books[index]))));
  }
}
