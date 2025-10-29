import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:portfolio_pavan/core/features/contact/presentation/screens/contact_screen.dart';
import 'package:portfolio_pavan/core/features/home/presentation/screens/home_screen.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/screeens/project_screen.dart';
import 'package:portfolio_pavan/core/routes/app_routes.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:shimmer/main.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes().home,
      getPages: [
        GetPage(name: AppRoutes().home, page: () => const HomeScreen()),
        GetPage(name: AppRoutes().project, page: () => ProjectScreen()),
        GetPage(name: AppRoutes().contact, page: () => ContactScreen()),
      ],
      title: 'The Developer Times',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}