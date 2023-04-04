import 'package:flutter/material.dart';
import 'package:sun_shield/utils/constants.dart';

class SettingItem extends StatelessWidget {
  final String content;
  final String? description;
  final Widget? extra;
  final Widget? bottom;
  const SettingItem(
      {Key? key,
      required this.content,
      this.description,
      this.extra,
      this.bottom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: ContainerSize.paddingSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: <Widget>[
            Text(content, style: const TextStyle(fontSize: 20)),
            const Spacer(),
            extra ?? const SizedBox()
          ]),
          if (description != null)
            Text(description!, style: const TextStyle(fontSize: 16)),
          if (bottom != null) bottom!
        ],
      ),
    );
  }
}
