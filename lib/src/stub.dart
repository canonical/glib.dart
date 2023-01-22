import 'glib.dart';

final glib = GLibStub();

class GLibStub implements GLibInterface {
  @override
  dynamic noSuchMethod(Invocation invocation) {
    throw UnimplementedError(invocation.memberName.toString().split('"')[1]);
  }
}
