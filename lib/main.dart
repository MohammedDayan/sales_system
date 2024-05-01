import 'package:flutter/material.dart';
import 'package:sales_system/constants/app_routes.dart';
import 'package:sales_system/views/home.dart';

import 'constants/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Sales System.',
      theme: themeData(),
      routes: AppRoutes().getRoutes(),
      home: const SideBar(),
    );
  }
}
