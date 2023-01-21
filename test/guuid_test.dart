import 'package:glib/glib.dart';
import 'package:test/test.dart';

void main() {
  test('uuid', () {
    expect(g_uuid_string_is_valid(''), isFalse);
    expect(g_uuid_string_is_valid(g_uuid_string_random()), isTrue);
  });
}
