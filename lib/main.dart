import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taloengrat_cv/constance.dart';
import 'screens/main_screen/main_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'taloengratp poomchaiya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        accentColor: fifthColor,
        textTheme: TextTheme(
          bodyText1: GoogleFonts.poppins(),
          headline1: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(displayColor: Colors.white)
              .headline1,
          headline3: GoogleFonts.prompt(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
          headline4: GoogleFonts.prompt(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          headline5: GoogleFonts.prompt(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          subtitle1: GoogleFonts.prompt(
            textStyle: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white70,
            ),
          ),
          // bodyText1:
        ),
      ),
      initialRoute: MainScreen.routeName,
      routes: {
        MainScreen.routeName: (ctx) => MainScreen(),
      },
    );
  }
}
