import 'glib.dart';

final GLib glib = GLibStub();

class GLibStub implements GLib {
  @override
  dynamic noSuchMethod(Invocation invocation) {
    throw UnimplementedError(invocation.memberName.toString().split('"')[1]);
  }
}
