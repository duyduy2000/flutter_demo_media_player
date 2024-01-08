abstract class SvgPath {
  static const _path = 'assets/svg/';

  static String _getAssetPath(String fileName) => '$_path$fileName';

  static String get eOfficeLogo => _getAssetPath('my-e-office-logo.svg');
}
