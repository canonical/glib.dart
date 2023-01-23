import 'package:meta/meta.dart';

import 'gmacros.g.dart';

@immutable
class GType {
  const GType(
    this.value,
  );

  final int value;

  static const boolean = GType(G_TYPE_BOOLEAN);
  static const schar = GType(G_TYPE_CHAR);
  static const uchar = GType(G_TYPE_UCHAR);
  static const int32 = GType(G_TYPE_INT);
  static const uint32 = GType(G_TYPE_UINT);
  static const long = GType(G_TYPE_LONG);
  static const ulong = GType(G_TYPE_ULONG);
  static const int64 = GType(G_TYPE_INT64);
  static const uint64 = GType(G_TYPE_UINT64);
  static const float = GType(G_TYPE_FLOAT);
  static const double = GType(G_TYPE_DOUBLE);
  static const string = GType(G_TYPE_STRING);

  static const values = [
    boolean,
    schar,
    uchar,
    int32,
    uint32,
    long,
    ulong,
    int64,
    uint64,
    float,
    double,
    string,
  ];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is GType && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'GType(value: $value)';
}
