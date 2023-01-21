import 'gutils.dart';
import 'guuid.dart';
import 'gversion.dart';

export 'stub.dart' if (dart.library.ffi) 'ffi/libglib.dart';

abstract class GLibInterface with GUtilsMixin, GUuidMixin, GVersionMixin {}
