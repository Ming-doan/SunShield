import 'package:flutter/material.dart';
import 'package:sun_shield/utils/constants.dart';
import 'package:sun_shield/widgets/grand_button.dart';

class VoiceSettingPage extends StatelessWidget {
  const VoiceSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Setup Emergency voice'),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: GrandButton(
                    onPressed: () {},
                    color: ColorPalette.cPrimary,
                    child: const Icon(
                      Icons.mic,
                      color: ColorPalette.cPrimary,
                      size: 50,
                    )))
          ],
        ));
  }
}
