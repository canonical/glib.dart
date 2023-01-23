import '../gversion.dart';
import 'ffi_x.dart';
import 'libglib.dart';

mixin GVersionFfiMixin on GVersionMixin {
  @override
  int get majorVersion => libglib.glib_major_version;
  @override
  int get minorVersion => libglib.glib_minor_version;
  @override
  int get microVersion => libglib.glib_micro_version;
  @override
  int get interfaceAge => libglib.glib_interface_age;
  @override
  int get binaryAge => libglib.glib_binary_age;

  @override
  String? checkVersion(
      int required_major, int required_minor, int required_micro) {
    return libglib
        .glib_check_version(required_major, required_minor, required_micro)
        .toDartString();
  }
}
