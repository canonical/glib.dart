import '../guuid.dart';

mixin StubGUuidMixin on GUuidMixin {
  @override
  bool g_uuid_string_is_valid(String str) => false;

  @override
  String g_uuid_string_random() => '';
}
