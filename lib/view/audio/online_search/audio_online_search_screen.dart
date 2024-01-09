import 'package:flutter/material.dart';
import 'package:flutter_demo_mp/common/commons.dart';
import 'package:flutter_demo_mp/model/mapper/audio.dart';
import 'package:flutter_demo_mp/model/repository/audio_repository.dart';
import 'package:flutter_demo_mp/view/audio/online_search/audio_list_view.dart';
import 'package:flutter_demo_mp/view/widget/widget.dart';

import '../../../model/dto/audio_list_dto.dart';

class AudioOnlineSearchScreen extends StatefulWidget {
  const AudioOnlineSearchScreen({super.key});

  @override
  State<AudioOnlineSearchScreen> createState() => _AudioOnlineSearchScreenState();
}

class _AudioOnlineSearchScreenState extends State<AudioOnlineSearchScreen> {
  final _apiCall = AudioRepository().getSimilarAudio(id: 80408);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      child: Container(
        decoration: _backgroundDecoration,
        child: FutureBuilder<AudioListDto?>(
          future: _apiCall,
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError && snapshot.connectionState == ConnectionState.done) {
              return Center(child: Text(snapshot.error.toString()));
            }

            return AudioListView(audioList: snapshot.data!.toModel());
          },
        ),
      ),
    );
  }

  BoxDecoration get _backgroundDecoration => BoxDecoration(
        color: Colors.grey.shade800,
        image: DecorationImage(image: ImageAsset.treeBackground, fit: BoxFit.cover, opacity: 0.8),
      );
}
