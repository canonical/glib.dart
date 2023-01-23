import 'package:glib/glib.dart';
import 'package:test/test.dart';

void main() {
  test('user name', () {
    expect(glib.getUserName(), isNotEmpty);
  });

  test('real name', () {
    expect(glib.getRealName(), isNotNull);
  });

  test('host name', () {
    expect(glib.getHostName(), isNotEmpty);
  });

  test('prg name', () {
    glib.setPrgName('gutils_test');
    expect(glib.getPrgName(), 'gutils_test');
  });

  test('application name', () {
    glib.setApplicationName('GLib utils test');
    expect(glib.getApplicationName(), 'GLib utils test');
  });

  test('os info', () {
    final isNullEmptyOrNot = anyOf(isNull, isEmpty, isNotEmpty);
    expect(glib.getOsInfo(G_OS_INFO_KEY_NAME), isNullEmptyOrNot);
    expect(glib.getOsInfo(G_OS_INFO_KEY_PRETTY_NAME), isNullEmptyOrNot);
    expect(glib.getOsInfo(G_OS_INFO_KEY_VERSION), isNullEmptyOrNot);
    expect(glib.getOsInfo(G_OS_INFO_KEY_VERSION_CODENAME), isNullEmptyOrNot);
    expect(glib.getOsInfo(G_OS_INFO_KEY_VERSION_ID), isNullEmptyOrNot);
    expect(glib.getOsInfo(G_OS_INFO_KEY_ID), isNullEmptyOrNot);
    expect(glib.getOsInfo(G_OS_INFO_KEY_HOME_URL), isNullEmptyOrNot);
    expect(glib.getOsInfo(G_OS_INFO_KEY_DOCUMENTATION_URL), isNullEmptyOrNot);
    expect(glib.getOsInfo(G_OS_INFO_KEY_SUPPORT_URL), isNullEmptyOrNot);
    expect(glib.getOsInfo(G_OS_INFO_KEY_BUG_REPORT_URL), isNullEmptyOrNot);
    expect(glib.getOsInfo(G_OS_INFO_KEY_PRIVACY_POLICY_URL), isNullEmptyOrNot);
    expect(glib.getOsInfo('unknown'), anyOf(isNull, isEmpty));
  });

  test('system directories', () {
    expect(glib.getTmpDir(), isNotEmpty);
    expect(glib.getHomeDir(), isNotEmpty);
    expect(glib.getSystemDataDirs(), isNotEmpty);
    expect(glib.getSystemConfigDirs(), isNotEmpty);
  });

  test('user directories', () {
    expect(glib.getUserDataDir(), isNotEmpty);
    expect(glib.getUserConfigDir(), isNotEmpty);
    expect(glib.getUserCacheDir(), isNotEmpty);
    expect(glib.getUserStateDir(), isNotEmpty);
    expect(glib.getUserRuntimeDir(), isNotEmpty);
    expect(glib.getUserSpecialDir(GUserDirectory.desktop), isNotNull);
    expect(glib.getUserSpecialDir(GUserDirectory.documents), isNotNull);
    expect(glib.getUserSpecialDir(GUserDirectory.download), isNotNull);
    expect(glib.getUserSpecialDir(GUserDirectory.music), isNotNull);
    expect(glib.getUserSpecialDir(GUserDirectory.pictures), isNotNull);
    expect(glib.getUserSpecialDir(GUserDirectory.publicShare), isNotNull);
    expect(glib.getUserSpecialDir(GUserDirectory.templates), isNotNull);
    expect(glib.getUserSpecialDir(GUserDirectory.videos), isNotNull);
  });

  test('format size', () {
    expect(glib.formatSize(123), isNotEmpty);
    expect(glib.formatSize(123, flags: GFormatSizeFlags.defaults), isNotEmpty);
    expect(
        glib.formatSize(123, flags: GFormatSizeFlags.longFormat), isNotEmpty);
    expect(glib.formatSize(123, flags: GFormatSizeFlags.iecUnits), isNotEmpty);
    expect(glib.formatSize(123, flags: GFormatSizeFlags.bits), isNotEmpty);
  });

  test('find program in path', () {
    expect(glib.findProgramInPath('dart'), anyOf(isNull, isNotEmpty));
  });
}
