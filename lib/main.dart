import 'package:flutter/material.dart';
import 'package:food_catalog/core/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.catalog,
      routes: AppRouter.routes,
    );
  }
}