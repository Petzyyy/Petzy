import 'package:flutter/material.dart';

Map<int, Color> color = {
  50: Color.fromRGBO(255, 166, 146, .1),
  100: Color.fromRGBO(255, 166, 146, .2),
  200: Color.fromRGBO(255, 166, 146, .3),
  300: Color.fromRGBO(255, 166, 146, .4),
  400: Color.fromRGBO(255, 166, 146, .5),
  500: Color.fromRGBO(255, 166, 146, .6),
  600: Color.fromRGBO(255, 166, 146, .7),
  700: Color.fromRGBO(255, 166, 146, .8),
  800: Color.fromRGBO(255, 166, 146, .9),
  900: Color.fromRGBO(255, 166, 146, 1),
};
ThemeData nativeTheme() {
  return ThemeData(
    textTheme: TextTheme(
      subtitle1: TextStyle(
          color: Color(0xFF34385A),
          fontSize: 12.5,
          fontWeight: FontWeight.w500),
      subtitle2: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 14,
        color: Color(0xFFF0900C),
      ),
      // ),
      headline1: TextStyle(
          color: Colors.black, fontSize: 14.5, fontWeight: FontWeight.w800),
      headline2: TextStyle(fontSize: 13.5, color: Color(0xFF727272)),
      headline3: TextStyle(
        fontSize: 13,
        color: Colors.black,
      ),
      headline4: TextStyle(
        fontSize: 13.5,
        color: Color(0xFFF0900C),
      ),
      headline5: TextStyle(
          fontSize: 15.5,
          color: Color(0xFF8F8F8F),
          fontWeight: FontWeight.w600),
    ),

    iconTheme: IconThemeData(color: Color(0xFF3D4ED9), size: 18),
    primaryColor: Color(0xFF3D4ED9),
    // primaryColorLight: Color.fromRGBO(255, 166, 146, .6), // Color(0xFFFFA692),
    // primaryColorDark: Color(0xFFFA692C),
    // primarySwatch: MaterialColor(0xFFFA692C, color),
    // primaryIconTheme: IconThemeData(color: Colors.white),
    // iconTheme: IconThemeData(color: Color(0xFFFA692C)),
    // cardColor: Color(0xFFF8F1F7),
    primaryTextTheme: TextTheme(
      // button: TextStyle(color: Colors.white, fontSize: 17),
      headline1: TextStyle(
          fontSize: 18, color: Color(0xFF34385A), fontWeight: FontWeight.bold),
      headline2: TextStyle(
        fontSize: 13,
        color: Colors.white,
      ), //
      headline3: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ), //
      headline4: TextStyle(fontSize: 15, color: Color(0xFF3D4ED9)), //
      headline5: TextStyle(
          fontSize: 21,
          color: Color(0xFF34385A),
          fontWeight: FontWeight.bold), //for title in intro
      headline6: TextStyle(
        color: Color(0xFF3D4ED9),
        fontSize: 12.5,
      ), //
      subtitle1: TextStyle(
          fontSize: 14,
          color: Color(0xFF8F8F8F),
          fontWeight: FontWeight.w600), // for subtitle in login
      subtitle2: TextStyle(
          fontSize: 11.5, color: Color(0xFF727272)), // for home's small texts
      overline: TextStyle(
          fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFFF0900C)),
      caption: TextStyle(
          color: Color(0xFF8F8F8F),
          fontSize: 15,
          fontWeight: FontWeight.w400), // for subtitle in intro

      bodyText1: TextStyle(
          color: Color(0xFF34385A),
          fontSize: 14.5,
          fontWeight: FontWeight.w800),
      bodyText2: TextStyle(
          color: Colors.black, fontSize: 13, fontWeight: FontWeight.w400),
    ), //AppBar Text field

    scaffoldBackgroundColor: Colors.white,
    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    //   backgroundColor: Color(0xFFFA692C),
    // ),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      padding: MaterialStateProperty.all(EdgeInsets.only(top: 10, bottom: 10)),
      backgroundColor: MaterialStateProperty.all(Color(0xFF3D4ED9)),
      shadowColor: MaterialStateProperty.all(Colors.white),
      foregroundColor: MaterialStateProperty.all(Colors.white),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      )),
      textStyle: MaterialStateProperty.all(TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600)),
    )),
    // outlinedButtonTheme: OutlinedButtonThemeData(
    //     style: ButtonStyle(
    //   side: MaterialStateProperty.all(BorderSide(color: Color(0xFFFA692C), width: 1.5)),
    //   textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16, color: Color(0xFFFA692C), fontWeight: FontWeight.w400)),
    //   shape: MaterialStateProperty.all(RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(5),
    //   )),
    // )),
    // dialogTheme: DialogTheme(
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10.0),
    //   ),
    //   backgroundColor: Colors.grey[100],
    //   titleTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFA692C)),
    // ),
    //elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(elevation: 0.5)),
    fontFamily: 'Avenir',
    // dividerColor: Colors.grey[300],
    // buttonTheme: ButtonThemeData(
    //   textTheme: ButtonTextTheme.primary,
    //   height: 50,
    //   buttonColor: Color(0xFFFA692C),
    //   focusColor: Color(0xFFFA692C),
    //   highlightColor: Color(0xFFFA692C),
    //   hoverColor: Color(0xFFFA692C),
    //   splashColor: Color(0xFFFA692C),
    //   disabledColor: Colors.grey,
    //   shape: RoundedRectangleBorder(borderRadius: new BorderRadius.all(new Radius.circular(10.0))),
    // ),
    // cardTheme: CardTheme(
    //   elevation: 0.5,
    //   margin: EdgeInsets.all(0),
    //   color: Colors.grey[100],
    //   shadowColor: Colors.grey[200],
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    // ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
          fontSize: 15, color: Color(0xFF8F8F8F), fontWeight: FontWeight.w400),
      counterStyle: TextStyle(color: Colors.grey),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        borderSide: BorderSide(width: 0.2, color: Colors.transparent),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF3D4ED9)),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      filled: true,
      fillColor: Color(0xFFF5F5F5),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
    appBarTheme: AppBarTheme(
        // color: Colors.grey[100],
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Color(0xFF34385A), size: 23),
        iconTheme: IconThemeData(color: Color(0xFF34385A), size: 28)),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //       padding: MaterialStateProperty.all(
    //         EdgeInsets.only(top: 15, bottom: 15),
    //       ),
    //       backgroundColor: MaterialStateProperty.all(Colors.white),
    //       shadowColor: MaterialStateProperty.all(Colors.white),
    //       overlayColor: MaterialStateProperty.all(Colors.white),
    //       foregroundColor: MaterialStateProperty.all(Colors.white),
    //       textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.w600))),
    // ),
    // checkboxTheme: CheckboxThemeData(
    //   checkColor: MaterialStateProperty.all(Colors.white),
    //   fillColor: MaterialStateProperty.all(Color(0xFFFA692C)),
    // )
  );
}
