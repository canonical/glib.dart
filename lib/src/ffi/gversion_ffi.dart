import '../gversion.dart';
import 'ffi_x.dart';
import 'libglib.dart';

mixin FfiGVersionMixin on GVersionMixin {
  @override
  int get glib_major_version => lib.glib_major_version;
  @override
  int get glib_minor_version => lib.glib_minor_version;
  @override
  int get glib_micro_version => lib.glib_micro_version;
  @override
  int get glib_interface_age => lib.glib_interface_age;
  @override
  int get glib_binary_age => lib.glib_binary_age;

  @override
  String? glib_check_version(
      int required_major, int required_minor, int required_micro) {
    return lib
        .glib_check_version(required_major, required_minor, required_micro)
        .toDartString();
  }
}
