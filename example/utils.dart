import 'package:glib/glib.dart';

void main() {
  print('names:');
  print('- user name: ${g_get_user_name()}');
  print('- real name: ${g_get_real_name()}');
  print('- host name: ${g_get_host_name()}');
  print('- prg name: ${g_get_prg_name()}');
  print('- application name: ${g_get_application_name()}');

  void printOsInfo(String key) {
    print('- ${key.toLowerCase().replaceAll('_', ' ')}: ${g_get_os_info(key)}');
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
  print('- temp: ${g_get_tmp_dir()}');
  print('- data:');
  for (final data_dir in g_get_system_data_dirs()) {
    print('  - $data_dir');
  }
  print('- config:');
  for (final config_dir in g_get_system_config_dirs()) {
    print('  - $config_dir');
  }

  print('\nuser directories:');
  print('- home: ${g_get_home_dir()}');
  print('- data: ${g_get_user_data_dir()}');
  print('- config: ${g_get_user_config_dir()}');
  print('- cache: ${g_get_user_cache_dir()}');
  print('- state: ${g_get_user_state_dir()}');
  print('- runtime: ${g_get_user_runtime_dir()}');
  print('- special directories:');
  printUserSpecialDirectory(String type, GUserDirectory directory) {
    print('  - $type: ${g_get_user_special_dir(directory)}');
  }

  printUserSpecialDirectory('desktop', G_USER_DIRECTORY_DESKTOP);
  printUserSpecialDirectory('documents', G_USER_DIRECTORY_DOCUMENTS);
  printUserSpecialDirectory('download', G_USER_DIRECTORY_DOWNLOAD);
  printUserSpecialDirectory('music', G_USER_DIRECTORY_MUSIC);
  printUserSpecialDirectory('pictures', G_USER_DIRECTORY_PICTURES);
  printUserSpecialDirectory('public share', G_USER_DIRECTORY_PUBLIC_SHARE);
  printUserSpecialDirectory('templates', G_USER_DIRECTORY_TEMPLATES);
  printUserSpecialDirectory('videos', G_USER_DIRECTORY_VIDEOS);

  print('\nprograms:');
  print('- dart: ${g_find_program_in_path('dart')}');
  print('- flutter: ${g_find_program_in_path('flutter')}');

  print('\nformat sizes:');
  print('- 123: ${g_format_size(123)}');
  print('- 123456: ${g_format_size(123456)}');
  print('- 123456789: ${g_format_size(123456789)}');
  print('- 123456789012: ${g_format_size(123456789012)}');
}
