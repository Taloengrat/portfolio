import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:taloengrat_cv/constance.dart';
import 'package:taloengrat_cv/providers/language_provider.dart';
import 'package:taloengrat_cv/providers/sidebar_contact_provider.dart';
import 'screens/main_screen/main_screen.dart';

void main() {
  // await GlobalConfiguration().loadFromAsset("app_setting");
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
                  fontSize: 50.sp,
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
                  fontSize: 24.sp,
                ),
              ),
              bodyText2: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey,
                  fontSize: 18.sp,
                ),
              ),
              button: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 18.sp,
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
