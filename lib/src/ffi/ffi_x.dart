import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart' as ffi;

extension StringX on String {
  ffi.Pointer<ffi.Char> toCString(ffi.Allocator allocator) {
    return toNativeUtf8(allocator: allocator).cast<ffi.Char>();
  }
}

extension CharPointerX on ffi.Pointer<ffi.Char> {
  String? toDartString() =>
      this == ffi.nullptr ? '' : cast<ffi.Utf8>().toDartString();
}

extension CharPointerPointerX on ffi.Pointer<ffi.Pointer<ffi.Char>> {
  List<String?> toDartStringList({int? length}) {
    if (length != null) {
      return [for (var i = 0; i < length; ++i) this[i].toDartString()];
    }
    return [
      for (var i = 0; this[i] != ffi.nullptr; ++i) this[i].toDartString()
    ];
  }
}
