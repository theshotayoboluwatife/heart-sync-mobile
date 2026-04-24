import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

TextStyle headerStyle = GoogleFonts.outfit(fontSize: 35, fontWeight: FontWeight.w700);
TextStyle subHeaderStyle = GoogleFonts.outfit(fontSize: 16.0, fontWeight: FontWeight.w500);
TextStyle textStyle8 = GoogleFonts.outfit(fontSize: 8.0);
TextStyle textStyle10 = GoogleFonts.outfit(fontSize: 10.0);
TextStyle textStyle12 = GoogleFonts.outfit(fontSize: 12.0);
TextStyle textStyle14 = GoogleFonts.outfit(fontSize: 14.0);
TextStyle textStyle16 = GoogleFonts.outfit(fontSize: 16.0);
TextStyle textStyle18 = GoogleFonts.outfit(fontSize: 18.0);
TextStyle bold20 = GoogleFonts.outfit(fontWeight: FontWeight.w700, fontSize: 20);

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(25),
  borderSide: const BorderSide(color: warGrey),
);

BoxShadow boxShadow = BoxShadow(
  offset: const Offset(1, 1),
  color: altoGrey.withOpacity(.6),
  spreadRadius: 1,
  blurStyle: BlurStyle.normal,
  blurRadius: 5,
);