import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MainTextTheme{
  static TextTheme lightTextMode= TextTheme(
      displayLarge: GoogleFonts.montserrat(
        color: Colors.black87,
      ),
      displayMedium: GoogleFonts.montserrat(
        color: Colors.blueGrey,
      ),
   
      
    );
  static TextTheme darkTextMode = TextTheme(
     displayLarge: GoogleFonts.montserrat(
      color: Colors.black87,
    ),
    displayMedium: GoogleFonts.montserrat(
      color: Colors.blueGrey,
    ),
  );

}