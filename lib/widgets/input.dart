import 'package:flutter/material.dart';
import 'package:sun_shield/utils/constants.dart';

class Input extends StatelessWidget {
  final String placeholder;
  final TextInputType? keyboardType;
  const Input(
      {Key? key,
      required this.placeholder,
      this.keyboardType = TextInputType.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: ContainerSize.paddingSize),
      child: TextField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          labelText: placeholder,
        ),
      ),
    );
  }
}
