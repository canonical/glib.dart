import 'package:glib/glib.dart';
import 'package:test/test.dart';

void main() {
  test('version', () {
    expect(glib.majorVersion, 2);
    expect(glib.minorVersion, isNonNegative);
    expect(glib.microVersion, isNonNegative);
  });

  test('version check', () {
    expect(glib.checkVersion(2, 0, 0), anyOf(isNull, isEmpty));
    expect(glib.checkVersion(3, 0, 0), isNotNull);
  });
}
