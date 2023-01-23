import 'glib.dart';
import 'gtype.dart';

abstract class GValue {
  factory GValue.type(GType type) => glib.createValue(type);
  factory GValue.boolean(bool value) =>
      GValue.type(GType.boolean)..setBoolean(value);
  factory GValue.schar(int value) => GValue.type(GType.schar)..setSchar(value);
  factory GValue.uchar(int value) => GValue.type(GType.uchar)..setUchar(value);
  factory GValue.int(int value) => GValue.type(GType.int32)..setInt(value);
  factory GValue.uint(int value) => GValue.type(GType.uint32)..setUint(value);
  factory GValue.long(int value) => GValue.type(GType.long)..setLong(value);
  factory GValue.ulong(int value) => GValue.type(GType.ulong)..setUlong(value);
  factory GValue.int64(int value) => GValue.type(GType.int64)..setInt64(value);
  factory GValue.uint64(int value) =>
      GValue.type(GType.uint64)..setUint64(value);
  factory GValue.float(double value) =>
      GValue.type(GType.float)..setFloat(value);
  factory GValue.double(double value) =>
      GValue.type(GType.double)..setDouble(value);
  factory GValue.string(String value) =>
      GValue.type(GType.string)..setString(value);

  GType get type;

  GValue copy();
  void reset();

  bool getBoolean();
  void setBoolean(bool value);

  int getSchar();
  void setSchar(int value);

  int getUchar();
  void setUchar(int value);

  int getInt();
  void setInt(int value);

  int getUint();
  void setUint(int value);

  int getLong();
  void setLong(int value);

  int getUlong();
  void setUlong(int value);

  int getInt64();
  void setInt64(int value);

  int getUint64();
  void setUint64(int value);

  double getFloat();
  void setFloat(double value);

  double getDouble();
  void setDouble(double value);

  String getString();
  void setString(String value);
}

mixin GValueMixin {
  GValue createValue(GType type);
}
