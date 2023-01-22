import 'dart:ffi' as ffi;
import 'dart:io' as io;

import 'package:meta/meta.dart';

import 'libgobject.g.dart';

LibGObject? _libgobject;
LibGObject get libobject =>
    _libgobject ??= LibGObject(ffi.DynamicLibrary.open(_env ?? _platform));

String? get _env => io.Platform.environment['LIBGOBJECT_PATH'];
String get _platform {
  if (io.Platform.isMacOS) return 'libgobject-2.0.0.dylib';
  if (io.Platform.isWindows) return 'gobject-2.0-0.dll';
  return 'libgobject-2.0.so.0';
}

@visibleForTesting
void overrideLibGObjectForTesting(LibGObject lib) => _libgobject = lib;
