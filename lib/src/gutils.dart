import 'glib.dart';
import 'gtypes.dart';

String g_get_user_name() => glib.g_get_user_name();
String g_get_real_name() => glib.g_get_real_name();
String g_get_home_dir() => glib.g_get_home_dir();
String g_get_tmp_dir() => glib.g_get_tmp_dir();
String g_get_host_name() => glib.g_get_host_name();
String? g_get_prg_name() => glib.g_get_prg_name();
void g_set_prg_name(String prg_name) => glib.g_set_prg_name(prg_name);
String? g_get_application_name() => glib.g_get_application_name();
void g_set_application_name(String application_name) =>
    glib.g_set_application_name(application_name);

String? g_get_os_info(String key) => glib.g_get_os_info(key);

void g_reload_user_special_dirs_cache() =>
    glib.g_reload_user_special_dirs_cache();
String g_get_user_data_dir() => glib.g_get_user_data_dir();
String g_get_user_config_dir() => glib.g_get_user_config_dir();
String g_get_user_cache_dir() => glib.g_get_user_cache_dir();
String g_get_user_state_dir() => glib.g_get_user_state_dir();
List<String> g_get_system_data_dirs() => glib.g_get_system_data_dirs();
List<String> g_get_system_config_dirs() => glib.g_get_system_config_dirs();
String g_get_user_runtime_dir() => glib.g_get_user_runtime_dir();

typedef GUserDirectory = int;
const GUserDirectory G_USER_DIRECTORY_DESKTOP = 0;
const GUserDirectory G_USER_DIRECTORY_DOCUMENTS = 1;
const GUserDirectory G_USER_DIRECTORY_DOWNLOAD = 2;
const GUserDirectory G_USER_DIRECTORY_MUSIC = 3;
const GUserDirectory G_USER_DIRECTORY_PICTURES = 4;
const GUserDirectory G_USER_DIRECTORY_PUBLIC_SHARE = 5;
const GUserDirectory G_USER_DIRECTORY_TEMPLATES = 6;
const GUserDirectory G_USER_DIRECTORY_VIDEOS = 7;
const GUserDirectory G_USER_N_DIRECTORIES = 8;

String? g_get_user_special_dir(GUserDirectory directory) =>
    glib.g_get_user_special_dir(directory);

const GFormatSizeFlags G_FORMAT_SIZE_DEFAULT = 0;
const GFormatSizeFlags G_FORMAT_SIZE_LONG_FORMAT = 1 << 0;
const GFormatSizeFlags G_FORMAT_SIZE_IEC_UNITS = 1 << 1;
const GFormatSizeFlags G_FORMAT_SIZE_BITS = 1 << 2;
typedef GFormatSizeFlags = int;

String g_format_size_full(guint64 size, GFormatSizeFlags flags) =>
    glib.g_format_size_full(size, flags);
String g_format_size(guint64 size) => glib.g_format_size(size);

String? g_find_program_in_path(String program) =>
    glib.g_find_program_in_path(program);

gint g_bit_nth_lsf(gulong mask, gint nth_bit) =>
    glib.g_bit_nth_lsf(mask, nth_bit);
gint g_bit_nth_msf(gulong mask, gint nth_bit) =>
    glib.g_bit_nth_msf(mask, nth_bit);
guint g_bit_storage(gulong number) => glib.g_bit_storage(number);

mixin GUtilsMixin {
  String g_get_user_name();
  String g_get_real_name();
  String g_get_home_dir();
  String g_get_tmp_dir();
  String g_get_host_name();

  String? g_get_prg_name();
  void g_set_prg_name(String prg_name);

  String? g_get_application_name();
  void g_set_application_name(String application_name);

  String? g_get_os_info(String key);

  void g_reload_user_special_dirs_cache();
  String g_get_user_data_dir();
  String g_get_user_config_dir();
  String g_get_user_cache_dir();
  String g_get_user_state_dir();
  List<String> g_get_system_data_dirs();
  List<String> g_get_system_config_dirs();
  String g_get_user_runtime_dir();
  String? g_get_user_special_dir(GUserDirectory directory);

  String g_format_size_full(guint64 size, GFormatSizeFlags flags);
  String g_format_size(guint64 size);

  String? g_find_program_in_path(String program);

  gint g_bit_nth_lsf(gulong mask, gint nth_bit);
  gint g_bit_nth_msf(gulong mask, gint nth_bit);
  guint g_bit_storage(gulong number);
}
