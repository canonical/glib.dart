import '../glib.dart';
import 'gutils.dart';
import 'gvalue.dart';
import 'gversion.dart';

final glib = GLib();

class GLib extends GLibInterface
    with GUtilsFfiMixin, GValueFfiMixin, GVersionFfiMixin {}
