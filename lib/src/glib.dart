import 'gutils.dart';
import 'gvalue.dart';
import 'gversion.dart';

export 'stub.dart' if (dart.library.ffi) 'ffi/glib.dart';

abstract class GLib with GUtilsMixin, GValueMixin, GVersionMixin {}
