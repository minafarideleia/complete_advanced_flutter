import 'package:complete_advanced_flutter/presentation/color_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager
          .grey1, // will be used incase of disabled button for example
      accentColor: ColorManager.grey
    // card view theme

    // App bar theme

    // Button theme

    // Text theme

    // input decoration theme (text form field)

  );
}
