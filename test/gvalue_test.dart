import 'package:glib/glib.dart';
import 'package:test/test.dart';

void main() {
  test('init', () {
    final value = GValue();
    value.init(G_TYPE_STRING);
    expect(value.type, G_TYPE_STRING);
  });

  test('reset', () {
    final value = GValue();
    value.init(G_TYPE_STRING);
    expect(value.type, G_TYPE_STRING);
    value.set_string('Hello, World!');
    value.reset();
    expect(value.type, G_TYPE_STRING);
    expect(value.get_string(), isEmpty);
  });

  test('unset', () {
    final value = GValue();
    value.init(G_TYPE_STRING);
    expect(value.type, G_TYPE_STRING);
    value.set_string('Hello, World!');
    value.unset();
    expect(value.type, G_TYPE_INVALID);
  });

  test('copy', () {
    final value = GValue();
    value.init(G_TYPE_STRING);
    value.set_string('Hello, World!');
    final copy = value.copy();
    expect(copy.type, G_TYPE_STRING);
    expect(copy.get_string(), 'Hello, World!');
  });

  test('boolean', () {
    final value = GValue.boolean(true);
    expect(value.type, G_TYPE_BOOLEAN);
    expect(value.get_boolean(), true);
    value.set_boolean(false);
    expect(value.get_boolean(), false);
  });

  test('schar', () {
    final value = GValue.schar(-42);
    expect(value.type, G_TYPE_CHAR);
    expect(value.get_schar(), -42);
    value.set_schar(42);
    expect(value.get_schar(), 42);
  });

  test('uchar', () {
    final value = GValue.uchar(42);
    expect(value.type, G_TYPE_UCHAR);
    expect(value.get_uchar(), 42);
    value.set_uchar(24);
    expect(value.get_uchar(), 24);
  });

  test('int', () {
    final value = GValue.int(-42);
    expect(value.type, G_TYPE_INT);
    expect(value.get_int(), -42);
    value.set_int(42);
    expect(value.get_int(), 42);
  });

  test('uint', () {
    final value = GValue.uint(42);
    expect(value.type, G_TYPE_UINT);
    expect(value.get_uint(), 42);
    value.set_uint(24);
    expect(value.get_uint(), 24);
  });

  test('long', () {
    final value = GValue.long(-42);
    expect(value.type, G_TYPE_LONG);
    expect(value.get_long(), -42);
    value.set_long(42);
    expect(value.get_long(), 42);
  });

  test('ulong', () {
    final value = GValue.ulong(42);
    expect(value.type, G_TYPE_ULONG);
    expect(value.get_ulong(), 42);
    value.set_ulong(24);
    expect(value.get_ulong(), 24);
  });

  test('int64', () {
    final value = GValue.int64(42);
    expect(value.type, G_TYPE_INT64);
    expect(value.get_int64(), 42);
    value.set_int64(-42);
    expect(value.get_int64(), -42);
  });

  test('uint64', () {
    final value = GValue.uint64(42);
    expect(value.type, G_TYPE_UINT64);
    expect(value.get_uint64(), 42);
    value.set_uint64(24);
    expect(value.get_uint64(), 24);
  });

  test('float', () {
    final value = GValue.float(123.456);
    expect(value.type, G_TYPE_FLOAT);
    expect(value.get_float(), closeTo(123.456, 0.0001));
    value.set_float(654.321);
    expect(value.get_float(), closeTo(654.321, 0.0001));
  });

  test('double', () {
    final value = GValue.double(123456.789);
    expect(value.type, G_TYPE_DOUBLE);
    expect(value.get_double(), closeTo(123456.789, 0.0001));
    value.set_double(987654.321);
    expect(value.get_double(), closeTo(987654.321, 0.0001));
  });

  test('string', () {
    final value = GValue.string('foo');
    expect(value.type, G_TYPE_STRING);
    expect(value.get_string(), 'foo');
    value.set_string('bar');
    expect(value.get_string(), 'bar');
  });
}
