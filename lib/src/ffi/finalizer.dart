import 'dart:ffi' as ffi;

import 'package:meta/meta.dart';

import 'libglib.dart';
import 'libglib.g.dart' as g;

GLibFinalizer? _finalizer;
GLibFinalizer get finalizer => _finalizer ??= GLibFinalizer();

@visibleForTesting
void overrideFinalizerForTesting(GLibFinalizer? finalizer) =>
    _finalizer = finalizer;

final _objects = <Object, ffi.NativeFinalizer>{};
final _finalizers = {
  g.GTimeZone: ffi.NativeFinalizer(dylib.lookup('g_time_zone_unref')),
};

class GLibFinalizer {
  void attach<T extends ffi.NativeType>(
    ffi.Finalizable object,
    ffi.Pointer<T> ptr,
  ) {
    _objects[object] = _finalizers[T]!
      ..attach(object, ptr.cast(), detach: object);
  }

  void detach(ffi.Finalizable object) {
    _objects.remove(object)!.detach(object);
  }
}
