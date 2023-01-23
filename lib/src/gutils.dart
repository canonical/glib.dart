import 'genums.dart';
import 'gtypes.dart';

mixin GUtilsMixin {
  String getUserName();
  String getRealName();
  String getHomeDir();
  String getTmpDir();
  String getHostName();

  String? getPrgName();
  void setPrgName(String prg_name);

  String? getApplicationName();
  void setApplicationName(String application_name);

  String? getOsInfo(String key);

  void reloadUserSpecialDirsCache();
  String getUserDataDir();
  String getUserConfigDir();
  String getUserCacheDir();
  String getUserStateDir();
  List<String> getSystemDataDirs();
  List<String> getSystemConfigDirs();
  String getUserRuntimeDir();
  String? getUserSpecialDir(GUserDirectory directory);

  String formatSize(guint64 size, {GFormatSizeFlags? flags});

  String? findProgramInPath(String program);
}
