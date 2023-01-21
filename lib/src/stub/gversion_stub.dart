import '../gversion.dart';

mixin StubGVersionMixin on GVersionMixin {
  @override
  int get glib_major_version => 0;
  @override
  int get glib_minor_version => 0;
  @override
  int get glib_micro_version => 0;
  @override
  int get glib_interface_age => 0;
  @override
  int get glib_binary_age => 0;

  @override
  String? glib_check_version(
          int required_major, int required_minor, int required_micro) =>
      null;
}
