import 'package:glib/glib.dart';
import 'package:test/test.dart';

void main() {
  test('copy', () {
    final value = GValue.string('Hello, World!');
    final copy = value.copy();
    expect(copy.type, G_TYPE_STRING);
    expect(copy.getString(), 'Hello, World!');
  });

  test('reset', () {
    final value = GValue.string('Hello, World!');
    value.reset();
    expect(value.type, G_TYPE_STRING);
    expect(value.getString(), isEmpty);
  });

  test('boolean', () {
    final value = GValue.boolean(true);
    expect(value.type, G_TYPE_BOOLEAN);
    expect(value.getBoolean(), true);
    value.setBoolean(false);
    expect(value.getBoolean(), false);
  });

  test('schar', () {
    final value = GValue.schar(-42);
    expect(value.type, G_TYPE_CHAR);
    expect(value.getSchar(), -42);
    value.setSchar(42);
    expect(value.getSchar(), 42);
  });

  test('uchar', () {
    final value = GValue.uchar(42);
    expect(value.type, G_TYPE_UCHAR);
    expect(value.getUchar(), 42);
    value.setUchar(24);
    expect(value.getUchar(), 24);
  });

  test('int', () {
    final value = GValue.int(-42);
    expect(value.type, G_TYPE_INT);
    expect(value.getInt(), -42);
    value.setInt(42);
    expect(value.getInt(), 42);
  });

  test('uint', () {
    final value = GValue.uint(42);
    expect(value.type, G_TYPE_UINT);
    expect(value.getUint(), 42);
    value.setUint(24);
    expect(value.getUint(), 24);
  });

  test('long', () {
    final value = GValue.long(-42);
    expect(value.type, G_TYPE_LONG);
    expect(value.getLong(), -42);
    value.setLong(42);
    expect(value.getLong(), 42);
  });

  test('ulong', () {
    final value = GValue.ulong(42);
    expect(value.type, G_TYPE_ULONG);
    expect(value.getUlong(), 42);
    value.setUlong(24);
    expect(value.getUlong(), 24);
  });

  test('int64', () {
    final value = GValue.int64(42);
    expect(value.type, G_TYPE_INT64);
    expect(value.getInt64(), 42);
    value.setInt64(-42);
    expect(value.getInt64(), -42);
  });

  test('uint64', () {
    final value = GValue.uint64(42);
    expect(value.type, G_TYPE_UINT64);
    expect(value.getUint64(), 42);
    value.setUint64(24);
    expect(value.getUint64(), 24);
  });

  test('float', () {
    final value = GValue.float(123.456);
    expect(value.type, G_TYPE_FLOAT);
    expect(value.getFloat(), closeTo(123.456, 0.0001));
    value.setFloat(654.321);
    expect(value.getFloat(), closeTo(654.321, 0.0001));
  });

  test('double', () {
    final value = GValue.double(123456.789);
    expect(value.type, G_TYPE_DOUBLE);
    expect(value.getDouble(), closeTo(123456.789, 0.0001));
    value.setDouble(987654.321);
    expect(value.getDouble(), closeTo(987654.321, 0.0001));
  });

  test('string', () {
    final value = GValue.string('foo');
    expect(value.type, G_TYPE_STRING);
    expect(value.getString(), 'foo');
    value.setString('bar');
    expect(value.getString(), 'bar');
  });
}
