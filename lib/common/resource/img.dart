import 'package:flutter/material.dart';

abstract class ImageAsset {
  static const _path = "assets/img/";

  static AssetImage _getImage(String fileName) => AssetImage('$_path$fileName');

  static final treeBackground = _getImage('tree.png');
}
