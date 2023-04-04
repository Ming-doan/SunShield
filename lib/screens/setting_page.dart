import 'package:flutter/material.dart';
import 'package:sun_shield/screens/setup_voice_page.dart';
import 'package:sun_shield/screens/setup_address_page.dart';
import 'package:sun_shield/widgets/button.dart';
import 'package:sun_shield/widgets/setting_item.dart';
import '../utils/constants.dart';
import '../widgets/setting_region.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  // Options variables
  bool isAlwaysActiveGPS = true;
  bool isNotifyWhenInDangerZone = false;
  bool isEmergencyVoice = false;
  bool isAutoDetect = true;

  void toggleAlwaysActiveGPS() {
    setState(() {
      isAlwaysActiveGPS = !isAlwaysActiveGPS;
    });
  }

  void toggleNotifyWhenInDangerZone() {
    setState(() {
      isNotifyWhenInDangerZone = !isNotifyWhenInDangerZone;
    });
  }

  void toggleEmergencyVoice() {
    setState(() {
      isEmergencyVoice = !isEmergencyVoice;
    });
  }

  void toggleAutoDetect() {
    setState(() {
      isAutoDetect = !isAutoDetect;
    });
  }

  void navigateToSetupAddress(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const AddressSettingPage()));
  }

  void navigateToVoiceSetting(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const VoiceSettingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Setting'),
          elevation: 0,
        ),
        body: ListView(children: <Widget>[
          SettingRegion(
            title: "General",
            children: <Widget>[
              SettingItem(
                  content: "Alway active GPS",
                  extra: Switch(
                      value: isAlwaysActiveGPS,
                      onChanged: (value) => toggleAlwaysActiveGPS())),
              SettingItem(
                  content: "Notify me when in danger zone",
                  extra: Switch(
                      value: isNotifyWhenInDangerZone,
                      onChanged: (value) => toggleNotifyWhenInDangerZone())),
            ],
          ),
          SettingRegion(
            title: "Detection",
            children: <Widget>[
              SettingItem(
                  content: "Emergency voice",
                  extra: Switch(
                      value: isEmergencyVoice,
                      onChanged: (value) => toggleEmergencyVoice()),
                  bottom: AppButton(
                    text: "Setup Emergency voice",
                    onPressed: () => navigateToVoiceSetting(context),
                    isBlock: true,
                  )),
              SettingItem(
                  content: "Auto Detect",
                  extra: Switch(
                      value: isAutoDetect,
                      onChanged: (value) => toggleAutoDetect()),
                  description: "Auto detect when you are in danger zone"),
            ],
          ),
          SettingRegion(
            title: "SOS Address",
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: ContainerSize.paddingSize),
                child: AppButton(
                    text: "Setup SOS Address",
                    onPressed: () => navigateToSetupAddress(context),
                    isBlock: true),
              )
            ],
          )
        ]));
  }
}
