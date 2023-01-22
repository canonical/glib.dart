import 'gtimezone.dart';
import 'gutils.dart';
import 'guuid.dart';
import 'gversion.dart';

export 'stub.dart' if (dart.library.ffi) 'ffi/libglib.dart';

abstract class GLibInterface
    with GTimeZoneMixin, GUtilsMixin, GUuidMixin, GVersionMixin {}
