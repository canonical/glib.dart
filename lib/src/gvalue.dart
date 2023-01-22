import 'glib.dart';
import 'gmacros.dart';

typedef GType = int;

abstract class GValue {
  factory GValue() => glib.create();
  factory GValue.boolean(bool value) => glib.create()
    ..init(G_TYPE_BOOLEAN)
    ..set_boolean(value);
  factory GValue.schar(int value) => glib.create()
    ..init(G_TYPE_CHAR)
    ..set_schar(value);
  factory GValue.uchar(int value) => glib.create()
    ..init(G_TYPE_UCHAR)
    ..set_uchar(value);
  factory GValue.int(int value) => glib.create()
    ..init(G_TYPE_INT)
    ..set_int(value);
  factory GValue.uint(int value) => glib.create()
    ..init(G_TYPE_UINT)
    ..set_uint(value);
  factory GValue.long(int value) => glib.create()
    ..init(G_TYPE_LONG)
    ..set_long(value);
  factory GValue.ulong(int value) => glib.create()
    ..init(G_TYPE_ULONG)
    ..set_ulong(value);
  factory GValue.int64(int value) => glib.create()
    ..init(G_TYPE_INT64)
    ..set_int64(value);
  factory GValue.uint64(int value) => glib.create()
    ..init(G_TYPE_UINT64)
    ..set_uint64(value);
  factory GValue.float(double value) => glib.create()
    ..init(G_TYPE_FLOAT)
    ..set_float(value);
  factory GValue.double(double value) => glib.create()
    ..init(G_TYPE_DOUBLE)
    ..set_double(value);
  factory GValue.string(String value) => glib.create()
    ..init(G_TYPE_STRING)
    ..set_string(value);

  void init(GType type);
  void reset();
  void unset();

  GType get type;

  GValue copy();

  bool get_boolean();
  void set_boolean(bool value);

  int get_schar();
  void set_schar(int value);

  int get_uchar();
  void set_uchar(int value);

  int get_int();
  void set_int(int value);

  int get_uint();
  void set_uint(int value);

  int get_long();
  void set_long(int value);

  int get_ulong();
  void set_ulong(int value);

  int get_int64();
  void set_int64(int value);

  int get_uint64();
  void set_uint64(int value);

  double get_float();
  void set_float(double value);

  double get_double();
  void set_double(double value);

  String get_string();
  void set_string(String value);
}

mixin GValueMixin {
  GValue create();
}
