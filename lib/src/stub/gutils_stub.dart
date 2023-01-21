import '../gutils.dart';

mixin StubGUtilsMixin on GUtilsMixin {
  @override
  String g_get_user_name() => '';

  @override
  String g_get_real_name() => '';

  @override
  String g_get_home_dir() => '';

  @override
  String g_get_tmp_dir() => '';

  @override
  String g_get_host_name() => '';

  @override
  String? g_get_prg_name() => null;

  @override
  void g_set_prg_name(String prg_name) {}

  @override
  String? g_get_application_name() => null;

  @override
  void g_set_application_name(String application_name) {}

  @override
  String? g_get_os_info(String key) => null;

  @override
  void g_reload_user_special_dirs_cache() {}

  @override
  String g_get_user_data_dir() => '';

  @override
  String g_get_user_config_dir() => '';

  @override
  String g_get_user_cache_dir() => '';

  @override
  String g_get_user_state_dir() => '';

  @override
  List<String> g_get_system_data_dirs() => [];

  @override
  List<String> g_get_system_config_dirs() => [];

  @override
  String g_get_user_runtime_dir() => '';

  @override
  String? g_get_user_special_dir(int directory) => null;

  @override
  String g_format_size_full(int size, int flags) => '';

  @override
  String g_format_size(int size) => '';

  @override
  String? g_find_program_in_path(String program) => null;

  @override
  int g_bit_nth_lsf(int mask, int nth_bit) => 0;

  @override
  int g_bit_nth_msf(int mask, int nth_bit) => 0;

  @override
  int g_bit_storage(int number) => 0;
}
