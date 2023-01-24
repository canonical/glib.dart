import 'package:collection/collection.dart';
import 'package:ffi/ffi.dart' as ffi;

import '../gutils.dart';
import 'ffi_x.dart';
import 'libglib.dart';

mixin GUtilsFfiMixin on GUtilsMixin {
  @override
  String getUserName() => libglib.g_get_user_name().toDartString()!;

  @override
  String getRealName() => libglib.g_get_real_name().toDartString()!;

  @override
  String getHomeDir() => libglib.g_get_home_dir().toDartString()!;

  @override
  String getTmpDir() => libglib.g_get_tmp_dir().toDartString()!;

  @override
  String getHostName() => libglib.g_get_host_name().toDartString()!;

  @override
  String? getOsInfo(String key) {
    return ffi.using((arena) {
      return libglib.g_get_os_info(key.toCString(arena)).toDartString();
    });
  }

  @override
  String getUserDataDir() => libglib.g_get_user_data_dir().toDartString()!;

  @override
  String getUserConfigDir() => libglib.g_get_user_config_dir().toDartString()!;

  @override
  String getUserCacheDir() => libglib.g_get_user_cache_dir().toDartString()!;

  @override
  String getUserStateDir() => libglib.g_get_user_state_dir().toDartString()!;

  @override
  List<String> getSystemDataDirs() => libglib
      .g_get_system_data_dirs()
      .toDartStringList()
      .whereType<String>()
      .toList();

  @override
  List<String> getSystemConfigDirs() => libglib
      .g_get_system_config_dirs()
      .toDartStringList()
      .whereNotNull()
      .toList();

  @override
  String getUserRuntimeDir() =>
      libglib.g_get_user_runtime_dir().toDartString()!;

  @override
  String? getUserSpecialDir(GUserDirectory directory) =>
      libglib.g_get_user_special_dir(directory.index).toDartString();

  @override
  String formatSize(int size, {GFormatSizeFlags? flags}) {
    final ptr = libglib.g_format_size_full(size, flags?.value ?? 0);
    final res = ptr.toDartString()?.trim();
    libglib.g_free(ptr.cast());
    return res!;
  }

  @override
  String? getProgramName() => libglib.g_get_prgname().toDartString();

  @override
  String? findProgramInPath(String program) {
    return ffi.using((arena) {
      final ptr = libglib.g_find_program_in_path(program.toCString(arena));
      final res = ptr.toDartString();
      libglib.g_free(ptr.cast());
      return res;
    });
  }
}
