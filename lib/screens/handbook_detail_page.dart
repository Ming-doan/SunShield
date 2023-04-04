import 'package:flutter/material.dart';
import 'package:sun_shield/models/book.dart';
import 'package:sun_shield/utils/constants.dart';

class HandBookDetailPage extends StatelessWidget {
  final BookModel book;
  const HandBookDetailPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(book.title),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(ContainerSize.paddingSize * 2),
          child: Text(
            book.content,
            style: const TextStyle(fontSize: 16, height: 1.5),
          ),
        ));
  }
}
