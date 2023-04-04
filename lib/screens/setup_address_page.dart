import 'package:flutter/material.dart';
import 'package:sun_shield/widgets/input.dart';
import '../widgets/setting_region.dart';

class AddressSettingPage extends StatelessWidget {
  const AddressSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Setup SOS Address'),
          elevation: 0,
        ),
        body: ListView(children: const <Widget>[
          SettingRegion(
            title: "Police phone number",
            children: <Widget>[
              Input(
                placeholder: "Police number",
              ),
            ],
          ),
          SettingRegion(
            title: "Family phone number",
            children: <Widget>[
              Input(
                placeholder: "Family number",
              ),
            ],
          )
        ]));
  }
}
