import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutable

final colorListProvider = Provider((ref) => colorList);

// Un simple booleano

final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// Un simple entero
final selectedColorProvider = StateProvider((ref) => 0);



// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//controller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = Estado = new AppTheme()
  ThemeNotifier(): super(AppTheme() );

  void toggleDarmode() {
    state = state.copyWith( isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex (int colorIndex) {
   state = state.copyWith( selectedColor: colorIndex);
  }

}