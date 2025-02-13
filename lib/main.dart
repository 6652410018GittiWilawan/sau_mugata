import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sau_mugata/views/splashmugata.dart';

void main(){
  runApp(
    const SauMugataApp(),
  );
}

class SauMugataApp extends StatefulWidget {
  const SauMugataApp({super.key});

  @override
  State<SauMugataApp> createState() => _SauMugataAppState();
}

class _SauMugataAppState extends State<SauMugataApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashmugataUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme),
      )
    );
  }
}