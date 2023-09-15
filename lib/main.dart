import 'package:flutter/material.dart';
import 'package:hl_demo/components/additionalIncome.dart';
import 'package:hl_demo/components/approval.dart';
import 'package:hl_demo/components/homePage.dart';
import 'package:hl_demo/components/property.dart';
import 'package:hl_demo/components/verifyITR.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      // home: const Approval(),
      // home: const CheckCustomComponents(),
      theme: ThemeData(
        // AppBar theme
        primaryColor: const Color(0xffFFFFFF),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            foregroundColor: Color(0xff02386e),
            centerTitle: false),

// Elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(243, 126, 32, 1),
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          ),
        ),

        hintColor: const Color(0xffBABABA),
// Text Button
        textButtonTheme: TextButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromRGBO(243, 126, 32, 1)),
        ),

// checkbox theme
        unselectedWidgetColor: const Color.fromRGBO(243, 126, 32, 1),
        checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          fillColor: MaterialStateColor.resolveWith(
            (states) => const Color.fromRGBO(243, 126, 32, 1),
          ),
        ),

        // title and subtitle fontSize and color
        listTileTheme: const ListTileThemeData(
          // titleTextStyle: TextStyle(fontSize: 20),
          // subtitleTextStyle: TextStyle(fontSize: 14),
          textColor: Colors.black,
        ),

        // text box outline color
        inputDecorationTheme: const InputDecorationTheme(
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          filled: false,
          labelStyle: TextStyle(
            color: Color(0xFFBABABA),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateColor.resolveWith(
              (states) => const Color.fromRGBO(243, 126, 32, 1)),
        ), //
// cursor color
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),
      ),
    );
  }
}
