import 'package:flutter/material.dart';
import 'package:flutter_demo_mp/view/navigation/main_navigator.dart';
import 'package:flutter_demo_mp/view/widget/screen_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_onlineSearchButton],
      ),
    );
  }

  Widget get _onlineSearchButton => Builder(builder: (context) {
        return ElevatedButton(
          onPressed: () => MainNavigator.gotoAudioOnlineSearchScreen(context: context),
          child: const Text("Online search"),
        );
      });
}
