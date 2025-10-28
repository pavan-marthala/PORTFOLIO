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


// <script type="module">
//     // Import the functions you need from the SDKs you need
//     import { initializeApp } from "https://www.gstatic.com/firebasejs/12.4.0/firebase-app.js";
// import { getAnalytics } from "https://www.gstatic.com/firebasejs/12.4.0/firebase-analytics.js";
// // TODO: Add SDKs for Firebase products that you want to use
// // https://firebase.google.com/docs/web/setup#available-libraries
//
// // Your web app's Firebase configuration
// // For Firebase JS SDK v7.20.0 and later, measurementId is optional
// const firebaseConfig = {
//   apiKey: "AIzaSyBDAd-D5aZCiwI3dNIBSYzYiRJD5SfsL2s",
//   authDomain: "portfolio-293e6.firebaseapp.com",
//   projectId: "portfolio-293e6",
//   storageBucket: "portfolio-293e6.firebasestorage.app",
//   messagingSenderId: "538422274795",
//   appId: "1:538422274795:web:5209b6f78312671bfc6cae",
//   measurementId: "G-21Q9341EJ2"
// };
//
// // Initialize Firebase
// const app = initializeApp(firebaseConfig);
// const analytics = getAnalytics(app);
// </script>