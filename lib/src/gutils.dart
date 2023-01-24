import 'gmacros.g.dart';
import 'gtypes.dart';

abstract class GOsInfoKey {
  static const name = G_OS_INFO_KEY_NAME;
  static const prettyName = G_OS_INFO_KEY_PRETTY_NAME;
  static const version = G_OS_INFO_KEY_VERSION;
  static const versionCodename = G_OS_INFO_KEY_VERSION_CODENAME;
  static const versionId = G_OS_INFO_KEY_VERSION_ID;
  static const id = G_OS_INFO_KEY_ID;
  static const homeUrl = G_OS_INFO_KEY_HOME_URL;
  static const documentationUrl = G_OS_INFO_KEY_DOCUMENTATION_URL;
  static const supportUrl = G_OS_INFO_KEY_SUPPORT_URL;
  static const bugReportUrl = G_OS_INFO_KEY_BUG_REPORT_URL;
  static const privacyPolicyUrl = G_OS_INFO_KEY_PRIVACY_POLICY_URL;
}

enum GUserDirectory {
  desktop,
  documents,
  download,
  music,
  pictures,
  publicShare,
  templates,
  videos,
}

enum GFormatSizeFlags {
  defaults(0),
  longFormat(1 << 0),
  iecUnits(1 << 1),
  bits(1 << 2);

  const GFormatSizeFlags(this.value);
  final int value;
}

mixin GUtilsMixin {
  String getUserName();
  String getRealName();
  String getHomeDir();
  String getTmpDir();
  String getHostName();

  String? getOsInfo(String key);

  String getUserDataDir();
  String getUserConfigDir();
  String getUserCacheDir();
  String getUserStateDir();
  List<String> getSystemDataDirs();
  List<String> getSystemConfigDirs();
  String getUserRuntimeDir();
  String? getUserSpecialDir(GUserDirectory directory);

  String formatSize(guint64 size, {GFormatSizeFlags? flags});

  String? getProgramName();
  String? findProgramInPath(String program);
}
