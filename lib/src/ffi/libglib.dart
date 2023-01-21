import 'dart:ffi' as ffi;
import 'dart:io' as io;

import 'package:meta/meta.dart';

import 'libglib.g.dart';
export 'libglib.g.dart';

LibGLib? _lib;
LibGLib get lib => _lib ??= LibGLib(ffi.DynamicLibrary.open(_env ?? _platform));

String? get _env => io.Platform.environment['LIBGLIB_PATH'];
String get _platform {
  if (io.Platform.isMacOS) return 'libglib-2.0.0.dylib';
  return 'libglib-2.0.so.0';
}

@visibleForTesting
void overrideLibGLibForTesting(LibGLib lib) => _lib = lib;
