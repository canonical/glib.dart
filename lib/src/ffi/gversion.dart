import '../gversion.dart';
import 'ffi_x.dart';
import 'libglib.dart';

mixin GVersionFfiMixin on GVersionMixin {
  @override
  int get glib_major_version => libglib.glib_major_version;
  @override
  int get glib_minor_version => libglib.glib_minor_version;
  @override
  int get glib_micro_version => libglib.glib_micro_version;
  @override
  int get glib_interface_age => libglib.glib_interface_age;
  @override
  int get glib_binary_age => libglib.glib_binary_age;

  @override
  String? glib_check_version(
      int required_major, int required_minor, int required_micro) {
    return libglib
        .glib_check_version(required_major, required_minor, required_micro)
        .toDartString();
  }
}
