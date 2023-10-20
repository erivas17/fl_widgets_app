import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//un simple boolean
final isDarkProvider = StateProvider((ref) => false);

//un simple int
final selectColorProvider = StateProvider((ref) => 0);

//un objeto de tipo AppTheme (custom)
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

//Controller
class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = Estado = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int selectedColor) {
    state = state.copyWith(selectedColor: selectedColor);
  }
}
