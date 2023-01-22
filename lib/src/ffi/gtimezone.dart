import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart' as ffi;

import '../gtimezone.dart';
import '../gtypes.dart';
import 'ffi_x.dart';
import 'finalizer.dart';
import 'libglib.dart';
import 'libglib.g.dart' as g;

mixin GTimeZoneFfiMixin on GTimeZoneMixin {
  @override
  GTimeZone g_time_zone_new_identifier(String identifier) {
    return ffi.using((arena) {
      final id = identifier.toCString(arena);
      return GTimeZoneFfi(lib.g_time_zone_new_identifier(id));
    });
  }

  @override
  GTimeZone g_time_zone_new_utc() => GTimeZoneFfi(lib.g_time_zone_new_utc());

  @override
  GTimeZone g_time_zone_new_local() =>
      GTimeZoneFfi(lib.g_time_zone_new_local());
}

class GTimeZoneFfi extends GTimeZone implements ffi.Finalizable {
  GTimeZoneFfi(this._ptr) {
    finalizer.attach(this, _ptr);
  }

  final ffi.Pointer<g.GTimeZone> _ptr;

  @override
  gint adjust_time(GTimeType type, gint64 time) {
    return ffi.using((arena) {
      // TODO: time is input/output parameter
      final t = arena<g.gint64>()..value = time;
      return lib.g_time_zone_adjust_time(_ptr, type, t);
    });
  }

  @override
  gint find_interval(GTimeType type, gint64 time) {
    return lib.g_time_zone_find_interval(_ptr, type, time);
  }

  @override
  String get_abbreviation(gint interval) {
    return lib.g_time_zone_get_abbreviation(_ptr, interval).toDartString()!;
  }

  @override
  String get_identifier() {
    return lib.g_time_zone_get_identifier(_ptr).toDartString()!;
  }

  @override
  gint32 get_offset(gint interval) {
    return lib.g_time_zone_get_offset(_ptr, interval);
  }

  @override
  gboolean is_dst(gint interval) {
    return lib.g_time_zone_is_dst(_ptr, interval) != 0;
  }
}
