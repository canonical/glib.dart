import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart' as ffi;

import '../gvalue.dart';
import 'ffi_x.dart';
import 'finalizer.dart';
import 'libglib.dart';
import 'libgobject.dart';
import 'libgobject.g.dart' as g;

mixin GValueFfiMixin on GValueMixin {
  @override
  GValue createValue(GType type) {
    final value = ffi.calloc<g.GValue>();
    libgobject.g_value_init(value, type);
    return GValueFfi(value);
  }
}

class GValueFfi implements GValue, ffi.Finalizable {
  GValueFfi(this._ptr) {
    finalizer.attach(this, _ptr, libgobject.addresses.g_value_unset);
    finalizer.attach(this, _ptr, libglib.addresses.g_free);
  }

  final ffi.Pointer<g.GValue> _ptr;

  @override
  GType get type => _ptr.ref.g_type;

  @override
  GValue copy() {
    final dst = ffi.calloc<g.GValue>();
    libgobject.g_value_init(dst, type);
    libgobject.g_value_copy(_ptr, dst);
    return GValueFfi(dst);
  }

  @override
  void reset() => libgobject.g_value_reset(_ptr);

  @override
  bool getBoolean() => libgobject.g_value_get_boolean(_ptr) != 0;
  @override
  void setBoolean(bool value) {
    libgobject.g_value_set_boolean(_ptr, value ? 1 : 0);
  }

  @override
  int getSchar() => libgobject.g_value_get_schar(_ptr);
  @override
  void setSchar(int value) => libgobject.g_value_set_schar(_ptr, value);

  @override
  int getUchar() => libgobject.g_value_get_uchar(_ptr);
  @override
  void setUchar(int value) => libgobject.g_value_set_uchar(_ptr, value);

  @override
  int getInt() => libgobject.g_value_get_int(_ptr);
  @override
  void setInt(int value) => libgobject.g_value_set_int(_ptr, value);

  @override
  int getUint() => libgobject.g_value_get_uint(_ptr);
  @override
  void setUint(int value) => libgobject.g_value_set_uint(_ptr, value);

  @override
  int getLong() => libgobject.g_value_get_long(_ptr);
  @override
  void setLong(int value) => libgobject.g_value_set_long(_ptr, value);

  @override
  int getUlong() => libgobject.g_value_get_ulong(_ptr);
  @override
  void setUlong(int value) => libgobject.g_value_set_ulong(_ptr, value);

  @override
  int getInt64() => libgobject.g_value_get_int64(_ptr);
  @override
  void setInt64(int value) => libgobject.g_value_set_int64(_ptr, value);

  @override
  int getUint64() => libgobject.g_value_get_uint64(_ptr);
  @override
  void setUint64(int value) => libgobject.g_value_set_uint64(_ptr, value);

  @override
  double getFloat() => libgobject.g_value_get_float(_ptr);
  @override
  void setFloat(double value) => libgobject.g_value_set_float(_ptr, value);

  @override
  double getDouble() => libgobject.g_value_get_double(_ptr);
  @override
  void setDouble(double value) => libgobject.g_value_set_double(_ptr, value);

  @override
  String getString() => libgobject.g_value_get_string(_ptr).toDartString()!;
  @override
  void setString(String value) {
    ffi.using((arena) {
      libgobject.g_value_set_string(_ptr, value.toCString(arena));
    });
  }
}
