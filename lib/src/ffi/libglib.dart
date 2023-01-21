import 'dart:ffi' as ffi;

import 'package:meta/meta.dart';

import 'libglib.g.dart';
export 'libglib.g.dart';

LibGLib? _lib;
LibGLib get lib =>
    _lib ??= LibGLib(ffi.DynamicLibrary.open('libglib-2.0.so.0'));

@visibleForTesting
void overrideLibGLibForTesting(LibGLib lib) => _lib = lib;
