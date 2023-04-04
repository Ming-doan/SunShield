import 'package:flutter/material.dart';
import '../utils/constants.dart';

class SettingRegion extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const SettingRegion({Key? key, required this.title, required this.children})
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
        child: Padding(
          padding: const EdgeInsets.all(ContainerSize.paddingSize * 2),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Text(title), ...children]),
        ));
  }
}
