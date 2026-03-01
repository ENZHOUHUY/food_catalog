import 'package:flutter/material.dart';
import 'package:food_catalog/core/constants/app_constants.dart';
import 'package:food_catalog/core/routes/app_router.dart';
import 'package:food_catalog/core/theme/app_theme.dart';
import 'package:food_catalog/injection.dart';

void main() {
  runApp(buildApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.catalog,
      routes: AppRouter.routes,
      theme: AppTheme.lightTheme,
      title: AppConstants.defTitle,
    );
  }
}