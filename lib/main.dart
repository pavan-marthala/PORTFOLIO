import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/features/home/presentation/screens/home_screen.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'The Developer Times',
      debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
