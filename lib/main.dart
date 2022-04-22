import 'package:flutter/material.dart';
import 'package:photogram_app/routes/app_pages.dart';
import 'package:photogram_app/routes/app_routes.dart';
import 'package:photogram_app/theme/app_constants.dart';
import 'package:photogram_app/ui/home/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppConstants.key,
      title: 'Photogram',
      themeMode: ThemeMode.light,
      routes: AppPages.page,
      // theme: AppThemes.light,
      // darkTheme: AppThemes.dark,
      initialRoute: AppRoutes.home,
      debugShowCheckedModeBanner: false,
    );
  }
}
