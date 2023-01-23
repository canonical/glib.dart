import 'gtypes.dart';

mixin GVersionMixin {
  guint get majorVersion;
  guint get minorVersion;
  guint get microVersion;
  guint get interfaceAge;
  guint get binaryAge;

  String? checkVersion(
      guint required_major, guint required_minor, guint required_micro);
}
