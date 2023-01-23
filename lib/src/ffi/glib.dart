import '../glib.dart';
import 'gutils.dart';
import 'gvalue.dart';
import 'gversion.dart';

final GLib glib = GLibFfi();

class GLibFfi extends GLib
    with GUtilsFfiMixin, GValueFfiMixin, GVersionFfiMixin {}
