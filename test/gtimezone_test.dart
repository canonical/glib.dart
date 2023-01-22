import 'dart:io';

import 'package:glib/glib.dart';
import 'package:test/test.dart';

void main() {
  test('utc', () {
    final utc = GTimeZone.utc();
    expect(utc.get_identifier(), 'UTC');
    expect(utc.get_abbreviation(0), 'UTC');
    expect(utc.get_offset(0), 0);
    expect(utc.is_dst(0), isFalse);
    expect(utc.adjust_time(G_TIME_TYPE_UNIVERSAL, 0), 0);
    expect(utc.find_interval(G_TIME_TYPE_UNIVERSAL, 0), 0);
  });

  test('local', () {
    final local = GTimeZone.local();
    expect(local.get_identifier(), isNotEmpty);
    expect(local.get_abbreviation(0), isNotEmpty);
    expect(local.get_offset(0), isNotNaN);
    expect(local.is_dst(0), anyOf(isFalse, isTrue));
    expect(local.adjust_time(G_TIME_TYPE_STANDARD, 0), isNotNaN);
    expect(local.find_interval(G_TIME_TYPE_STANDARD, 0), isNotNaN);
  });

  test('identifier', () {
    final stockholm = GTimeZone.identifier('Europe/Stockholm');
    expect(stockholm.get_identifier(), 'Europe/Stockholm');
    expect(stockholm.get_abbreviation(0), 'LMT');
    expect(stockholm.get_offset(0), isNotNaN);
    expect(stockholm.is_dst(0), anyOf(isFalse, isTrue));
    expect(stockholm.adjust_time(G_TIME_TYPE_STANDARD, 0), isNotNaN);
    expect(stockholm.find_interval(G_TIME_TYPE_STANDARD, 0), isNotNaN);
  },
      skip: Platform
          .isWindows); // TODO: g_time_zone_get_identifier: assertion 'tz != NULL' failed
}
