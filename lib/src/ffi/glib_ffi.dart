import '../glib.dart';
import 'gutils_ffi.dart';
import 'guuid_ffi.dart';
import 'gversion_ffi.dart';

final glib = FfiGLib();

class FfiGLib extends GLib
    with FfiGUtilsMixin, FfiGUuidMixin, FfiGVersionMixin {}
