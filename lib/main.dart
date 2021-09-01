import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:taloengrat_cv/providers/language_provider.dart';
import 'package:taloengrat_cv/providers/sidebar_contact_provider.dart';
import 'package:taloengrat_cv/providers/widget_position_provider.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: LanguageProvider(),
        ),
        ChangeNotifierProvider.value(
          value: SidebarProvider(),
        ),
        ChangeNotifierProvider.value(
          value: WidgetPositionProvider(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: Size(
          1500,
          900,
        ),
        builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'TaloengratP CV',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: primaryColor,
            accentColor: fifthColor,
            textTheme: TextTheme(
              headline1:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
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
              bodyText1: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black87,
                  // fontSize:
                ),
              ),
              bodyText2: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey,
                ),
              ),
              button: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          initialRoute: MainScreen.routeName,
          routes: {
            MainScreen.routeName: (ctx) => MainScreen(),
          },
        ),
      ),
    );
  }
}
