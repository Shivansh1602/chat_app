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

final ThemeData funkyChatDarkNeonLightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  fontFamily: GoogleFonts.urbanist().fontFamily,   // Try 'Urbanist', 'Montserrat', or 'Space Grotesk'
  colorScheme: ColorScheme.light(
    primary: Color(0xFF1FE6A5),        // Neon Mint
    secondary: Color(0xFFFF5E62),      // Vibrant Coral-Pink
    background: Color(0xFF0D1B2A),     // !!! Deep Neon Futuristic Blue !!!
    surface: Color(0xFF1A2438),        // Slightly lighter blue/grey for cards
    onPrimary: Colors.black,
    onSecondary: Colors.white,
    onSurface: Color(0xFFD3DCE6),      // Light Neon Text
    onBackground: Color(0xFFD3DCE6),
  ),
  scaffoldBackgroundColor: Color(0xFF0D1B2A),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Color(0xFFD3DCE6)),
    titleTextStyle: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      letterSpacing: 1.3,
      color: Color(0xFFD3DCE6),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFF1A2438),  // Glassy neon card
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
    color: Color(0xFF1A2438).withOpacity(0.92),
    elevation: 7,
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
      elevation: 8,
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
  darkTheme: funkyChatDarkNeonLightTheme,
  themeMode: ThemeMode.system,
      title: 'FlutterChat',
 
      home:const AuthScreen(),
    );
  }
}