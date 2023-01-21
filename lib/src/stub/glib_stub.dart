import '../glib.dart';
import 'gutils_stub.dart';
import 'guuid_stub.dart';
import 'gversion_stub.dart';

final glib = StubGLib();

class StubGLib extends GLib
    with StubGUtilsMixin, StubGUuidMixin, StubGVersionMixin {}
