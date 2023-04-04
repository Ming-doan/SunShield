import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sun_shield/screens/handbook_page.dart';
import 'package:sun_shield/screens/map_page.dart';
import 'package:sun_shield/screens/setting_page.dart';
import 'package:sun_shield/utils/constants.dart';
import 'package:sun_shield/widgets/button.dart';
import 'package:sun_shield/widgets/grand_button.dart';
import 'package:sun_shield/widgets/utils_widget.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import '../utils/utils.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Sending variable
  bool isSending = false;
  // Timer variable
  Duration time = const Duration(seconds: 0);
  Timer? timer;
  // Sound variable
  bool isMute = false;
  AssetsAudioPlayer player = AssetsAudioPlayer();

  void increaseTime() {
    setState(() {
      time = Duration(seconds: time.inSeconds + 1);
    });
    playRingTone();
  }

  void resetTime() {
    setState(() {
      time = const Duration(seconds: 0);
      if (isMute) {
        toggleMute();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      if (isSending) {
        increaseTime();
      }
    });
  }

  void navigateToHandBook(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HandBookPage()));
  }

  void navigateToMap(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MapPage()));
  }

  void navigateToSetting(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SettingPage()));
  }

  void onSendingEmergency() {
    setState(() {
      isSending = true;
    });
  }

  void onCanceledEmergency() {
    setState(() {
      isSending = false;
    });
    resetTime();
    player.pause();
  }

  void toggleMute() {
    setState(() {
      isMute = !isMute;
    });
    if (isMute) {
      player.pause();
    } else {
      player.play();
    }
  }

  void playRingTone() {
    if (!isMute && time.inSeconds == 10) {
      player.open(
        Audio("assets/ringtone.mp3"),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:
            const BoxDecoration(gradient: ColorPalette.backgroundGradient),
        child: Column(children: <Widget>[
          !isSending
              ? Padding(
                  padding: const EdgeInsets.all(ContainerSize.paddingSize),
                  child: Row(children: <Widget>[
                    IconButton(
                        icon: const Icon(
                          Icons.settings,
                          size: ItemSize.iconSize,
                          color: ColorPalette.iconColor,
                        ),
                        onPressed: () => navigateToSetting(context)),
                    const ExpandedContainer(),
                    IconButton(
                        icon: const Icon(
                          Icons.book,
                          size: ItemSize.iconSize,
                          color: ColorPalette.iconColor,
                        ),
                        onPressed: () => navigateToHandBook(context)),
                    IconButton(
                        icon: const Icon(
                          Icons.map,
                          size: ItemSize.iconSize,
                          color: ColorPalette.iconColor,
                        ),
                        onPressed: () => navigateToMap(context)),
                  ]),
                )
              : Container(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isSending
                    ? const Text("Sending time",
                        style:
                            TextStyle(color: ColorPalette.gWhite, fontSize: 20))
                    : Container(),
                isSending
                    ? Text(timeFormat(time),
                        style: const TextStyle(
                            color: ColorPalette.gWhite,
                            fontSize: 25,
                            fontWeight: FontWeight.bold))
                    : Container(),
                const SizedBox(
                  height: ContainerSize.paddingSize * 10,
                ),
                GrandButton(
                  child: Text(
                    !isSending ? "SOS" : "Sending",
                    style: TextSize.grandButtonTextStyle,
                  ),
                  onPressed: () => onSendingEmergency(),
                ),
                const SizedBox(
                  height: ContainerSize.paddingSize * 10,
                ),
                !isSending
                    ? const Image(
                        image: AssetImage('assets/logo_long.png'),
                        width: ItemSize.buttonSize / 1.8)
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            AppButton(
                              text: isMute ? "Unmute" : "Mute",
                              onPressed: () => toggleMute(),
                              isWhite: true,
                            ),
                            const SizedBox(
                              width: ContainerSize.paddingSize * 2,
                            ),
                            AppButton(
                              text: "Cancel",
                              onPressed: () => onCanceledEmergency(),
                              isTransparent: true,
                            )
                          ])
              ],
            ),
          )
        ]),
      ),
    );
  }
}
