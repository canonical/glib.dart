import 'package:collection/collection.dart';
import 'package:ffi/ffi.dart' as ffi;

import '../gutils.dart';
import 'ffi_x.dart';
import 'libglib.dart';

mixin FfiGUtilsMixin on GUtilsMixin {
  @override
  String g_get_user_name() => lib.g_get_user_name().toDartString()!;

  @override
  String g_get_real_name() => lib.g_get_real_name().toDartString()!;

  @override
  String g_get_home_dir() => lib.g_get_home_dir().toDartString()!;

  @override
  String g_get_tmp_dir() => lib.g_get_tmp_dir().toDartString()!;

  @override
  String g_get_host_name() => lib.g_get_host_name().toDartString()!;

  @override
  String? g_get_prg_name() => lib.g_get_prgname().toDartString();

  @override
  void g_set_prg_name(String prg_name) {
    ffi.using((arena) => lib.g_set_prgname(prg_name.toCString(arena)));
  }

  @override
  String? g_get_application_name() =>
      lib.g_get_application_name().toDartString();

  @override
  void g_set_application_name(String application_name) {
    ffi.using((arena) {
      lib.g_set_application_name(application_name.toCString(arena));
    });
  }

  @override
  String? g_get_os_info(String key) {
    return ffi.using((arena) {
      return lib.g_get_os_info(key.toCString(arena)).toDartString();
    });
  }

  @override
  void g_reload_user_special_dirs_cache() =>
      lib.g_reload_user_special_dirs_cache();

  @override
  String g_get_user_data_dir() => lib.g_get_user_data_dir().toDartString()!;

  @override
  String g_get_user_config_dir() => lib.g_get_user_config_dir().toDartString()!;

  @override
  String g_get_user_cache_dir() => lib.g_get_user_cache_dir().toDartString()!;

  @override
  String g_get_user_state_dir() => lib.g_get_user_state_dir().toDartString()!;

  @override
  List<String> g_get_system_data_dirs() => lib
      .g_get_system_data_dirs()
      .toDartStringList()
      .whereType<String>()
      .toList();

  @override
  List<String> g_get_system_config_dirs() =>
      lib.g_get_system_config_dirs().toDartStringList().whereNotNull().toList();

  @override
  String g_get_user_runtime_dir() =>
      lib.g_get_user_runtime_dir().toDartString()!;

  @override
  String? g_get_user_special_dir(int directory) =>
      lib.g_get_user_special_dir(directory).toDartString();

  @override
  String g_format_size_full(int size, int flags) {
    final ptr = lib.g_format_size_full(size, flags);
    final res = ptr.toDartString()?.trim();
    lib.g_free(ptr.cast());
    return res!;
  }

  @override
  String g_format_size(int size) {
    final ptr = lib.g_format_size(size);
    final res = ptr.toDartString()?.trim();
    lib.g_free(ptr.cast());
    return res!;
  }

  @override
  String? g_find_program_in_path(String program) {
    return ffi.using((arena) {
      final ptr = lib.g_find_program_in_path(program.toCString(arena));
      final res = ptr.toDartString();
      lib.g_free(ptr.cast());
      return res;
    });
  }

  @override
  int g_bit_nth_lsf(int mask, int nth_bit) => lib.g_bit_nth_lsf(mask, nth_bit);

  @override
  int g_bit_nth_msf(int mask, int nth_bit) => lib.g_bit_nth_msf(mask, nth_bit);

  @override
  int g_bit_storage(int number) => lib.g_bit_storage(number);
}
