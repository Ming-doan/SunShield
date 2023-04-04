import 'package:flutter/material.dart';
import 'package:sun_shield/utils/constants.dart';

class GrandButton extends StatelessWidget {
  final Widget child;
  final Function? onPressed;
  final Color? color;
  const GrandButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      this.color = ColorPalette.gWhite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed!(),
      borderRadius: BorderRadius.circular(ItemSize.buttonSize / 2),
      child: Container(
        height: ItemSize.buttonSize,
        width: ItemSize.buttonSize,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ItemSize.buttonSize / 2),
            border: Border.all(
              width: 2,
              color: color!,
              style: BorderStyle.solid,
            )),
        child: Center(child: child),
      ),
    );
  }
}
