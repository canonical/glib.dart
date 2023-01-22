import 'dart:ffi' as ffi;

import 'package:meta/meta.dart';

GLibFinalizer? _finalizer;
GLibFinalizer get finalizer => _finalizer ??= GLibFinalizer();

@visibleForTesting
void overrideFinalizerForTesting(GLibFinalizer? finalizer) =>
    _finalizer = finalizer;

final _finalizables = <Object, ffi.NativeFinalizer>{};

class GLibFinalizer {
  void attach(
    ffi.Finalizable finalizable,
    ffi.Pointer<ffi.NativeType> instance,
    ffi.Pointer<ffi.NativeFunction> unref,
  ) {
    _finalizables[finalizable] = ffi.NativeFinalizer(unref.cast())
      ..attach(finalizable, instance.cast(), detach: finalizable);
  }

  void detach(ffi.Finalizable object) {
    _finalizables.remove(object)!.detach(object);
  }
}
