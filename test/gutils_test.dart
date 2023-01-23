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

  test('os info', () {
    final isNullEmptyOrNot = anyOf(isNull, isEmpty, isNotEmpty);
    expect(glib.getOsInfo(GOsInfoKey.name), isNullEmptyOrNot);
    expect(glib.getOsInfo(GOsInfoKey.prettyName), isNullEmptyOrNot);
    expect(glib.getOsInfo(GOsInfoKey.version), isNullEmptyOrNot);
    expect(glib.getOsInfo(GOsInfoKey.versionCodename), isNullEmptyOrNot);
    expect(glib.getOsInfo(GOsInfoKey.versionId), isNullEmptyOrNot);
    expect(glib.getOsInfo(GOsInfoKey.id), isNullEmptyOrNot);
    expect(glib.getOsInfo(GOsInfoKey.homeUrl), isNullEmptyOrNot);
    expect(glib.getOsInfo(GOsInfoKey.documentationUrl), isNullEmptyOrNot);
    expect(glib.getOsInfo(GOsInfoKey.supportUrl), isNullEmptyOrNot);
    expect(glib.getOsInfo(GOsInfoKey.bugReportUrl), isNullEmptyOrNot);
    expect(glib.getOsInfo(GOsInfoKey.privacyPolicyUrl), isNullEmptyOrNot);
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
