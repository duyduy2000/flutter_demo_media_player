import 'package:flutter/material.dart';
import 'package:flutter_demo_mp/model/model/audio.dart';
import 'package:flutter_demo_mp/view/widget/widget.dart';

class AudioListView extends StatelessWidget {
  const AudioListView({super.key, required this.audioList});

  final List<Audio> audioList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
      separatorBuilder: (_, __) => Divider(thickness: 2, color: Colors.grey.withAlpha(100)),
      itemCount: audioList.length,
      itemBuilder: (_, index) => _item(index),
    );
  }

  Widget _item(int index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            LimitedWidthText(
              audioList[index].name,
              maxWidth: 300,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
                shadows: _textShadow,
              ),
            ),
            LimitedWidthText(
              audioList[index].username,
              maxWidth: 200,
              style: TextStyle(fontSize: 16, color: Colors.white, shadows: _textShadow),
            ),
          ],
        ),
      );

  List<BoxShadow> get _textShadow =>
      [const BoxShadow(color: Colors.black, blurRadius: 4, offset: Offset(1, 1))];
}
