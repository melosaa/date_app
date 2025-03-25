import 'package:date_app/utilities/constants/icon_constants.dart';
import 'package:date_app/utilities/constants/l10n/app_translations.dart';
import 'package:date_app/utilities/core/config/system_config.dart';
import 'package:date_app/utilities/core/localization/locale_manager.dart';
import 'package:date_app/utilities/core/theme/bindings.dart';
import 'package:date_app/utilities/core/theme/theme_service.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/date_symbol_data_local.dart';


class AppInitialize {
  AppInitialize._();

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Sistem yapılandırmasını uygula
    SystemConfig.setupSystemSettings();

    // Dil ayarlarını yükle
    await AppTranslations.loadLanguages();
    await initializeDateFormatting('tr_TR', null);
    LocaleManager.loadLocaleFromStorage();

    // Tema ayarlarını uygula
    Get.changeThemeMode(ThemeService.themeMode);

    // GetStorage başlat
    await GetStorage.init();

    // Iconları önbelleğe al
    IconConstants.svgPrecacheImage();

    // Controller bağımlılıklarını yükle
    BindingsController.registerControllers();
  }
}
