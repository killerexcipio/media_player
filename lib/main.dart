import 'package:flutter/material.dart';
import 'core/app_routes.dart';

void main() {
  runApp(const AssignmentApp());
}

class AssignmentApp extends StatelessWidget {
  const AssignmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CSE 489 Assignment 2',
      initialRoute: AppRoutes.broadcast,
      routes: AppRoutes.routes,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
    );
  }
}