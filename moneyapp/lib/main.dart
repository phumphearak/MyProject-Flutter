import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moneyapp/pages/home/home_screen.dart';
import 'package:moneyapp/utils/app_color.dart';

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
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          iconTheme: IconThemeData(color: AppColors.iconColors),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
