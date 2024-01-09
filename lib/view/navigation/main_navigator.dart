import 'package:flutter/cupertino.dart';
import 'package:flutter_demo_mp/view/audio/online_search/audio_online_search_screen.dart';

abstract class MainNavigator {
  static void navigate(BuildContext context, {required Widget screen}) =>
      Navigator.push(context, CupertinoPageRoute(builder: (_) => screen));

  static void gotoAudioOnlineSearchScreen({required BuildContext context}) =>
      navigate(context, screen: const AudioOnlineSearchScreen());
}
