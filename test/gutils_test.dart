import 'package:glib/glib.dart';
import 'package:test/test.dart';

void main() {
  test('user name', () {
    expect(g_get_user_name(), isNotEmpty);
  });

  test('real name', () {
    expect(g_get_real_name(), isNotEmpty);
  });

  test('host name', () {
    expect(g_get_host_name(), isNotEmpty);
  });

  test('prg name', () {
    g_set_prg_name('gutils_test');
    expect(g_get_prg_name(), 'gutils_test');
  });

  test('application name', () {
    g_set_application_name('GLib utils test');
    expect(g_get_application_name(), 'GLib utils test');
  });

  test('os info', () {
    final isNullEmptyOrNot = anyOf(isNull, isEmpty, isNotEmpty);
    expect(g_get_os_info(G_OS_INFO_KEY_NAME), isNullEmptyOrNot);
    expect(g_get_os_info(G_OS_INFO_KEY_PRETTY_NAME), isNullEmptyOrNot);
    expect(g_get_os_info(G_OS_INFO_KEY_VERSION), isNullEmptyOrNot);
    expect(g_get_os_info(G_OS_INFO_KEY_VERSION_CODENAME), isNullEmptyOrNot);
    expect(g_get_os_info(G_OS_INFO_KEY_VERSION_ID), isNullEmptyOrNot);
    expect(g_get_os_info(G_OS_INFO_KEY_ID), isNullEmptyOrNot);
    expect(g_get_os_info(G_OS_INFO_KEY_HOME_URL), isNullEmptyOrNot);
    expect(g_get_os_info(G_OS_INFO_KEY_DOCUMENTATION_URL), isNullEmptyOrNot);
    expect(g_get_os_info(G_OS_INFO_KEY_SUPPORT_URL), isNullEmptyOrNot);
    expect(g_get_os_info(G_OS_INFO_KEY_BUG_REPORT_URL), isNullEmptyOrNot);
    expect(g_get_os_info(G_OS_INFO_KEY_PRIVACY_POLICY_URL), isNullEmptyOrNot);
    expect(g_get_os_info('unknown'), anyOf(isNull, isEmpty));
  });

  test('system directories', () {
    expect(g_get_tmp_dir(), isNotEmpty);
    expect(g_get_home_dir(), isNotEmpty);
    expect(g_get_system_data_dirs(), isNotEmpty);
    expect(g_get_system_config_dirs(), isNotEmpty);
  });

  test('user directories', () {
    expect(g_get_user_data_dir(), isNotEmpty);
    expect(g_get_user_config_dir(), isNotEmpty);
    expect(g_get_user_cache_dir(), isNotEmpty);
    expect(g_get_user_state_dir(), isNotEmpty);
    expect(g_get_user_runtime_dir(), isNotEmpty);
    expect(g_get_user_special_dir(G_USER_DIRECTORY_DESKTOP), isNotEmpty);
    expect(g_get_user_special_dir(G_USER_DIRECTORY_DOCUMENTS), isNotEmpty);
    expect(g_get_user_special_dir(G_USER_DIRECTORY_DOWNLOAD), isNotEmpty);
    expect(g_get_user_special_dir(G_USER_DIRECTORY_MUSIC), isNotEmpty);
    expect(g_get_user_special_dir(G_USER_DIRECTORY_PICTURES), isNotEmpty);
    expect(g_get_user_special_dir(G_USER_DIRECTORY_PUBLIC_SHARE), isNotEmpty);
    expect(g_get_user_special_dir(G_USER_DIRECTORY_TEMPLATES), isNotEmpty);
    expect(g_get_user_special_dir(G_USER_DIRECTORY_VIDEOS), isNotEmpty);
  });

  test('format size', () {
    expect(g_format_size(123), isNotEmpty);
    expect(g_format_size_full(123, G_FORMAT_SIZE_DEFAULT), isNotEmpty);
    expect(g_format_size_full(123, G_FORMAT_SIZE_LONG_FORMAT), isNotEmpty);
    expect(g_format_size_full(123, G_FORMAT_SIZE_IEC_UNITS), isNotEmpty);
    expect(g_format_size_full(123, G_FORMAT_SIZE_BITS), isNotEmpty);
  });

  test('find program in path', () {
    expect(g_find_program_in_path('dart'), anyOf(isNull, isNotEmpty));
  });
}
