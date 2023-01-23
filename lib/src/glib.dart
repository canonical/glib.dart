import 'gutils.dart';
import 'gvalue.dart';
import 'gversion.dart';

export 'stub.dart' if (dart.library.ffi) 'ffi/glib.dart';

abstract class GLibInterface with GUtilsMixin, GValueMixin, GVersionMixin {}
