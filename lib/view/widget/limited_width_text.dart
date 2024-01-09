import 'package:flutter/material.dart';

class LimitedWidthText extends StatelessWidget {
  const LimitedWidthText(this.text, {super.key, this.maxWidth, this.style});

  final String text;
  final double? maxWidth;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      child: Text(text, maxLines: 1, overflow: TextOverflow.ellipsis, style: style),
    );
  }
}
