import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chat_app/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData funkyChatLightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  fontFamily: GoogleFonts.urbanist().fontFamily,   // Try 'Urbanist', 'Montserrat', or 'Space Grotesk'
  colorScheme: ColorScheme.light(
    primary: Color(0xFF1FE6A5),        // Neon Mint
    secondary: Color(0xFFFF5E62),      // Vibrant Coral-Pink
    background: Color(0xFFFCFBF5),     // Funky off-white
    surface: Color(0xFFFFFFFF),
    onPrimary: Colors.black,
    onSecondary: Colors.white,
    onSurface: Color(0xFF22223B),
    onBackground: Color(0xFF212135),
  ),
  scaffoldBackgroundColor: Color(0xFFFCFBF5),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: Color(0xFF212135),
    ),
    titleTextStyle: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      letterSpacing: 1.3,
      color: Color(0xFF212135),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFFDFF9FB),  // Subtle light neon
    hintStyle: TextStyle(color: Color(0xFF8A94A6)),
    contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Color(0xFF1FE6A5)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Color(0xFFFF5E62), width: 2),
    ),
  ),
  cardTheme: CardThemeData(
    color: Color(0xFFFFFFFF).withOpacity(0.90),
    elevation: 6,
    shadowColor: Color(0x44FF5E62),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(22),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFFF5E62),
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1.3),
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      shadowColor: const Color(0x331FE6A5),
      elevation: 7,
    ),
  ),
);

final ThemeData chatpodiaFuturisticTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  fontFamily: GoogleFonts.poppins().fontFamily,
  colorScheme: ColorScheme.dark(
    primary: Color(0xFF6DE3FA),            // Soft neon cyan (for highlights, bubbles)
    secondary: Color(0xFF51FFA6),          // Minty green accent (buttons, toggles)
    background: Color(0xFF161821),         // Rich, almost-black blue
    surface: Color(0xFF222339),            // Slightly lighter for cards, fields, messages
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    onSurface: Color(0xFFD6E4F0),          // Whisper white-blue text
    onBackground: Color(0xFFE9FFF9),
  ),
  scaffoldBackgroundColor: Color(0xFF161821), // Deep, restful background
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Color(0xFF6DE3FA)),
    titleTextStyle: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 22,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
      color: Color(0xFFCAF1FB),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFF23243A).withOpacity(0.8), // Glassy, cool input fields
    hintStyle: TextStyle(color: Color(0xFF98A7B9)),
    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: Color(0xFF6DE3FA), width: 1.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: Color(0xFF51FFA6), width: 2),
    ),
  ),
  cardTheme: CardThemeData(
    color: Color(0xFF23243A).withOpacity(0.92),
    elevation: 9,
    shadowColor: Color(0x3D6DE3FA),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(22),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF6DE3FA),
      foregroundColor: Colors.black,
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      shadowColor: const Color(0x6651FFA6),
      elevation: 7,
    ),
  ),
  dialogTheme: DialogThemeData(
    backgroundColor: Color(0xFF222339).withOpacity(0.92),
    elevation: 15,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  ),
);




void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: funkyChatLightTheme,
  darkTheme: chatpodiaFuturisticTheme,
  themeMode: ThemeMode.system,
      title: 'FlutterChat',
 
      home:const AuthScreen(),
    );
  }
}