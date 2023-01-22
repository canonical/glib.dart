import 'glib.dart';
import 'gtypes.dart';

typedef GTimeType = int;
const GTimeType G_TIME_TYPE_STANDARD = 0;
const GTimeType G_TIME_TYPE_DAYLIGHT = 1;
const GTimeType G_TIME_TYPE_UNIVERSAL = 2;

abstract class GTimeZone {
  const GTimeZone();
  factory GTimeZone.identifier(String identifier) =>
      glib.g_time_zone_new_identifier(identifier);
  factory GTimeZone.utc() => glib.g_time_zone_new_utc();
  factory GTimeZone.local() => glib.g_time_zone_new_local();

  gint find_interval(GTimeType type, gint64 time);
  gint adjust_time(GTimeType type, gint64 time);
  String get_abbreviation(gint interval);
  gint32 get_offset(gint interval);
  gboolean is_dst(gint interval);
  String get_identifier();
}

mixin GTimeZoneMixin {
  GTimeZone g_time_zone_new_identifier(String identifier);
  GTimeZone g_time_zone_new_utc();
  GTimeZone g_time_zone_new_local();
}
