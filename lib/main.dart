import 'package:chatappui/domain/constants/appcolors.dart';
import 'package:chatappui/domain/constants/appthemes.dart';
import 'package:chatappui/domain/constants/cubits/themecubit.dart';
import 'package:chatappui/domain/constants/cubits/themestates.dart';
import 'package:chatappui/repository/screens/onboarding/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (_) => ThemeCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit,ThemeStates>(
      builder: (context,state){
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chat App',
          theme: state is LightThemeStates ? AppThemes.lightTheme : AppThemes.darkTheme,
          home: OnBoardingScreen()
        );
      },
    );
  }
}