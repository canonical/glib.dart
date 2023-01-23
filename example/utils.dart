import 'package:glib/glib.dart';

void main() {
  print('names:');
  print('- user name: ${glib.getUserName()}');
  print('- real name: ${glib.getRealName()}');
  print('- host name: ${glib.getHostName()}');
  print('- prg name: ${glib.getPrgName()}');
  print('- application name: ${glib.getApplicationName()}');

  void printOsInfo(String key) {
    print(
        '- ${key.toLowerCase().replaceAll('_', ' ')}: ${glib.getOsInfo(key)}');
  }

  print('\nos info:');
  printOsInfo(G_OS_INFO_KEY_NAME);
  printOsInfo(G_OS_INFO_KEY_PRETTY_NAME);
  printOsInfo(G_OS_INFO_KEY_VERSION);
  printOsInfo(G_OS_INFO_KEY_VERSION_CODENAME);
  printOsInfo(G_OS_INFO_KEY_VERSION_ID);
  printOsInfo(G_OS_INFO_KEY_ID);
  printOsInfo(G_OS_INFO_KEY_HOME_URL);
  printOsInfo(G_OS_INFO_KEY_DOCUMENTATION_URL);
  printOsInfo(G_OS_INFO_KEY_SUPPORT_URL);
  printOsInfo(G_OS_INFO_KEY_BUG_REPORT_URL);
  printOsInfo(G_OS_INFO_KEY_PRIVACY_POLICY_URL);

  print('\nsystem directories:');
  print('- temp: ${glib.getTmpDir()}');
  print('- data:');
  for (final data_dir in glib.getSystemDataDirs()) {
    print('  - $data_dir');
  }
  print('- config:');
  for (final config_dir in glib.getSystemConfigDirs()) {
    print('  - $config_dir');
  }

  print('\nuser directories:');
  print('- home: ${glib.getHomeDir()}');
  print('- data: ${glib.getUserDataDir()}');
  print('- config: ${glib.getUserConfigDir()}');
  print('- cache: ${glib.getUserCacheDir()}');
  print('- state: ${glib.getUserStateDir()}');
  print('- runtime: ${glib.getUserRuntimeDir()}');
  print('- special directories:');
  void printUserSpecialDirectory(String type, GUserDirectory directory) {
    print('  - $type: ${glib.getUserSpecialDir(directory)}');
  }

  printUserSpecialDirectory('desktop', GUserDirectory.desktop);
  printUserSpecialDirectory('documents', GUserDirectory.documents);
  printUserSpecialDirectory('download', GUserDirectory.download);
  printUserSpecialDirectory('music', GUserDirectory.music);
  printUserSpecialDirectory('pictures', GUserDirectory.pictures);
  printUserSpecialDirectory('public share', GUserDirectory.publicShare);
  printUserSpecialDirectory('templates', GUserDirectory.templates);
  printUserSpecialDirectory('videos', GUserDirectory.videos);

  print('\nprograms:');
  print('- dart: ${glib.findProgramInPath('dart')}');
  print('- flutter: ${glib.findProgramInPath('flutter')}');

  print('\nformat sizes:');
  print('- 123: ${glib.formatSize(123)}');
  print('- 123456: ${glib.formatSize(123456)}');
  print('- 123456789: ${glib.formatSize(123456789)}');
  print('- 123456789012: ${glib.formatSize(123456789012)}');
}
