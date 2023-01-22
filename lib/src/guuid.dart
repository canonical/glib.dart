import 'glib.dart';
import 'gtypes.dart';

gboolean g_uuid_string_is_valid(String str) => glib.g_uuid_string_is_valid(str);
String g_uuid_string_random() => glib.g_uuid_string_random();

mixin GUuidMixin {
  gboolean g_uuid_string_is_valid(String str);
  String g_uuid_string_random();
}
