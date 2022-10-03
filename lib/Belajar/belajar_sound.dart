import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class BelajarSound extends StatefulWidget {
  const BelajarSound({Key? key}) : super(key: key);

  @override
  State<BelajarSound> createState() => _BelajarSoundState();
}

class _BelajarSoundState extends State<BelajarSound> {
  String durasi = '00:00:00';
  late AudioPlayer audioPlayer;

  _BelajarSoundState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onDurationChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
      audioPlayer.setReleaseMode(ReleaseMode.loop);
    });
  }

  void playSound(Source url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Playing music'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      playSound(
                        UrlSource(
                            "http://portal.cte.co.id/flutter_tms/assets/music/PODA.mp3"),
                      );
                    },
                    child: const Text('Play')),
                ElevatedButton(
                    onPressed: () {
                      pauseSound();
                    },
                    child: const Text('Pause')),
                ElevatedButton(
                    onPressed: () {
                      stopSound();
                    },
                    child: const Text('Stop')),
                ElevatedButton(
                    onPressed: () {
                      resumeSound();
                    },
                    child: const Text('Resume')),
                Text(
                  durasi,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ]),
        ),
      ),
    );
  }
}
