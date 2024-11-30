import 'package:chatappui/domain/constants/cubits/themestates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeStates> {
  ThemeCubit() : super(LightThemeStates());

  void toggletheme() {
    if (state is LightThemeStates) {
      emit(DarkThemeStates());
    } else {
      emit(LightThemeStates());
    }
  }
}
