import 'package:flutter/material.dart';
import 'package:flutter_demo_mp/model/dto/dto.dart';
import 'package:flutter_demo_mp/model/repository/audio_repository.dart';
import 'package:flutter_demo_mp/view/widget/widget.dart';

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
      child: FutureBuilder<AudioListDto?>(
        future: _apiCall,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError && snapshot.connectionState == ConnectionState.done) {
            return Center(child: Text(snapshot.error.toString()));
          }

          return Center(
            child: Text(
              snapshot.data?.results?[0].name ?? "data",
              style: const TextStyle(color: Colors.black),
            ),
          );
        },
      ),
    );
  }
}
