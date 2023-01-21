import '../glib.dart';
import 'gutils_ffi.dart';

final glib = FfiGLib();

class FfiGLib extends GLib with FfiGUtilsMixin {}
