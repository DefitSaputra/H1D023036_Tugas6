import 'package:flutter/material.dart';
import 'package:h1d023036_tugas6/ui/form_data.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // --- PALET WARNA CERAH BARU ---
    final Color primaryColor = Color(0xFF81D4FA); 
    final Color secondaryColor = Color(0xFFFFCC80); 
    final Color accentColor = Color(0xFF4FC3F7); 
    final Color backgroundColor = Color(0xFFFBFBFB);

    return MaterialApp(
      title: 'Tugas 6 Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
          secondary: secondaryColor,
          background: backgroundColor,
          onPrimary: Colors.white, 
        ),

        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),

        scaffoldBackgroundColor: backgroundColor,

        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 2,
          centerTitle: true,
          titleTextStyle: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade200, width: 1.0), // Border sangat tipis
            borderRadius: BorderRadius.circular(15), // Lebih rounded
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: accentColor, width: 2.0),
            borderRadius: BorderRadius.circular(15),
          ),
          labelStyle: TextStyle(color: Colors.grey.shade600),
          hintStyle: TextStyle(color: Colors.grey.shade400),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: accentColor,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            textStyle: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        cardTheme: CardThemeData(
          elevation: 6.0,
          shadowColor: Colors.grey.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), 
          ),
        ),

        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const FormData(),
    );
  }
}