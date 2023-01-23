import 'gtypes.dart';

mixin GVersionMixin {
  guint get majorVersion;
  guint get minorVersion;
  guint get microVersion;

  String? checkVersion(
      guint required_major, guint required_minor, guint required_micro);
}
