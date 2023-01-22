import '../glib.dart';
import 'gtimezone.dart';
import 'gutils.dart';
import 'guuid.dart';
import 'gvalue.dart';
import 'gversion.dart';

final glib = GLib();

class GLib extends GLibInterface
    with
        GTimeZoneFfiMixin,
        GUtilsFfiMixin,
        GUuidFfiMixin,
        GValueFfiMixin,
        GVersionFfiMixin {}
