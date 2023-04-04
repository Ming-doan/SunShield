import 'package:flutter/material.dart';
import 'package:sun_shield/utils/constants.dart';

class Book extends StatelessWidget {
  final String title;
  final String description;
  final Function onPressed;
  const Book(
      {Key? key,
      required this.title,
      required this.description,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: BorderDirectional(
        bottom: BorderSide(
          width: 1,
          color: ColorPalette.gLight,
          style: BorderStyle.solid,
        ),
      )),
      child: InkWell(
        onTap: () => onPressed(),
        child: Padding(
          padding: const EdgeInsets.all(ContainerSize.paddingSize * 2),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: ContainerSize.paddingSize),
                Text(description, style: const TextStyle(fontSize: 16)),
                const SizedBox(height: ContainerSize.paddingSize),
                const Text("See more",
                    style:
                        TextStyle(fontSize: 16, color: ColorPalette.cPrimary))
              ]),
        ),
      ),
    );
  }
}
