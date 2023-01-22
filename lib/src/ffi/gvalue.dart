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
  GValue create() => GValueFfi(ffi.calloc<g.GValue>());
}

class GValueFfi implements GValue, ffi.Finalizable {
  GValueFfi(this._ptr) {
    finalizer.attach(this, _ptr, libgobject.addresses.g_value_unset);
    finalizer.attach(this, _ptr, libglib.addresses.g_free);
  }

  final ffi.Pointer<g.GValue> _ptr;

  @override
  void init(GType type) => libgobject.g_value_init(_ptr, type);

  @override
  void reset() => libgobject.g_value_reset(_ptr);

  @override
  void unset() => libgobject.g_value_unset(_ptr);

  @override
  GValue copy() {
    final dst = ffi.calloc<g.GValue>();
    libgobject.g_value_init(dst, type);
    libgobject.g_value_copy(_ptr, dst);
    return GValueFfi(dst);
  }

  @override
  GType get type => _ptr.ref.g_type;

  @override
  bool get_boolean() => libgobject.g_value_get_boolean(_ptr) != 0;
  @override
  void set_boolean(bool value) {
    libgobject.g_value_set_boolean(_ptr, value ? 1 : 0);
  }

  @override
  int get_schar() => libgobject.g_value_get_schar(_ptr);
  @override
  void set_schar(int value) => libgobject.g_value_set_schar(_ptr, value);

  @override
  int get_uchar() => libgobject.g_value_get_uchar(_ptr);
  @override
  void set_uchar(int value) => libgobject.g_value_set_uchar(_ptr, value);

  @override
  int get_int() => libgobject.g_value_get_int(_ptr);
  @override
  void set_int(int value) => libgobject.g_value_set_int(_ptr, value);

  @override
  int get_uint() => libgobject.g_value_get_uint(_ptr);
  @override
  void set_uint(int value) => libgobject.g_value_set_uint(_ptr, value);

  @override
  int get_long() => libgobject.g_value_get_long(_ptr);
  @override
  void set_long(int value) => libgobject.g_value_set_long(_ptr, value);

  @override
  int get_ulong() => libgobject.g_value_get_ulong(_ptr);
  @override
  void set_ulong(int value) => libgobject.g_value_set_ulong(_ptr, value);

  @override
  int get_int64() => libgobject.g_value_get_int64(_ptr);
  @override
  void set_int64(int value) => libgobject.g_value_set_int64(_ptr, value);

  @override
  int get_uint64() => libgobject.g_value_get_uint64(_ptr);
  @override
  void set_uint64(int value) => libgobject.g_value_set_uint64(_ptr, value);

  @override
  double get_float() => libgobject.g_value_get_float(_ptr);
  @override
  void set_float(double value) => libgobject.g_value_set_float(_ptr, value);

  @override
  double get_double() => libgobject.g_value_get_double(_ptr);
  @override
  void set_double(double value) => libgobject.g_value_set_double(_ptr, value);

  @override
  String get_string() => libgobject.g_value_get_string(_ptr).toDartString()!;
  @override
  void set_string(String value) {
    ffi.using((arena) {
      libgobject.g_value_set_string(_ptr, value.toCString(arena));
    });
  }
}
