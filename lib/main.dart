import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_routs.dart';
import 'package:flutter_application_1/styles/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lora().fontFamily,
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.light,
      ),
      initialRoute: AppRouts.login,
      routes: AppRouts.pages,
    );
  }
}
