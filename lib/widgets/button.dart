import 'package:flutter/material.dart';
import 'package:sun_shield/utils/constants.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final bool? isBlock;
  final bool? isWhite;
  final bool? isTransparent;
  const AppButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.isBlock,
      this.isWhite = false,
      this.isTransparent = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Color textColor;
    if (!isWhite! || isTransparent!) {
      textColor = ColorPalette.gWhite;
    } else {
      textColor = ColorPalette.cPrimary;
    }

    return Container(
        width: isBlock != null ? double.infinity : null,
        decoration: BoxDecoration(
            color: isWhite! && !isTransparent! ? ColorPalette.gWhite : null,
            gradient: !isWhite! && !isTransparent!
                ? ColorPalette.backgroundGradient
                : null,
            border:
                isTransparent! ? Border.all(color: textColor, width: 1) : null,
            borderRadius:
                BorderRadius.circular(ContainerSize.paddingSize * 10)),
        child: InkWell(
            borderRadius: BorderRadius.circular(ContainerSize.paddingSize * 10),
            focusColor: textColor,
            hoverColor: textColor,
            splashColor: textColor,
            onTap: () => onPressed(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: ContainerSize.paddingSize * 1.4,
                  horizontal: ContainerSize.paddingSize * 2),
              child: Text(
                text,
                style: TextStyle(color: textColor),
                textAlign: TextAlign.center,
              ),
            )));
  }
}
