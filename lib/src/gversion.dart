import 'glib.dart';
import 'gtypes.dart';

final guint glib_major_version = glib.glib_major_version;
final guint glib_minor_version = glib.glib_minor_version;
final guint glib_micro_version = glib.glib_micro_version;
final guint glib_interface_age = glib.glib_interface_age;
final guint glib_binary_age = glib.glib_binary_age;

String? glib_check_version(
        guint required_major, guint required_minor, guint required_micro) =>
    glib.glib_check_version(required_major, required_minor, required_micro);

mixin GVersionMixin {
  guint get glib_major_version => throw UnimplementedError();
  guint get glib_minor_version => throw UnimplementedError();
  guint get glib_micro_version => throw UnimplementedError();
  guint get glib_interface_age => throw UnimplementedError();
  guint get glib_binary_age => throw UnimplementedError();

  String? glib_check_version(
          guint required_major, guint required_minor, guint required_micro) =>
      throw UnimplementedError();
}
