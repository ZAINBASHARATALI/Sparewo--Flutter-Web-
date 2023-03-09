import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sparewo/controllers/panel_provider.dart';
import 'package:sparewo/screens/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PanelProvider(),
      child: MaterialApp(
        theme: ThemeData(textTheme: GoogleFonts.mulishTextTheme()),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
