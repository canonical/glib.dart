import 'package:ffi/ffi.dart' as ffi;

import '../guuid.dart';
import 'ffi_x.dart';
import 'libglib.dart';

mixin GUuidFfiMixin on GUuidMixin {
  @override
  bool g_uuid_string_is_valid(String str) {
    return ffi.using((arena) {
      return libglib.g_uuid_string_is_valid(str.toCString(arena)) != 0;
    });
  }

  @override
  String g_uuid_string_random() {
    return ffi.using((arena) {
      final ptr = libglib.g_uuid_string_random();
      final res = ptr.toDartString();
      libglib.g_free(ptr.cast());
      return res!;
    });
  }
}
