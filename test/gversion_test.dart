import 'package:glib/glib.dart';
import 'package:test/test.dart';

void main() {
  test('version', () {
    expect(glib_major_version, 2);
    expect(glib_minor_version, isNonNegative);
    expect(glib_micro_version, isNonNegative);
    expect(glib_interface_age, isNonNegative);
    expect(glib_binary_age, isNonNegative);
  });

  test('version check', () {
    expect(glib_check_version(2, 0, 0), anyOf(isNull, isEmpty));
    expect(glib_check_version(3, 0, 0), isNotNull);
  });
}
