import 'package:flutter/material.dart';
import 'package:flutter_demo_mp/model/repository/audio_repository.dart';
import 'package:flutter_demo_mp/view/widget/widget.dart';

class AudioOnlineSearchScreen extends StatelessWidget {
  const AudioOnlineSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      child: FutureBuilder(
        future: AudioRepository().getSimilarAudio(id: 80408),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return Container();
        },
      ),
    );
  }
}
