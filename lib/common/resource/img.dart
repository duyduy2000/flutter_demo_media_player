import 'package:flutter/material.dart';

abstract class ImageAsset {
  static const _path = "assets/img/";

  static Widget _getImage(String fileName) => Image(image: AssetImage('$_path$fileName'));

  static final treeBackground = _getImage('tree.png');
}
