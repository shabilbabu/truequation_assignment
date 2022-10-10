import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KarPage extends StatelessWidget {
  const KarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Kart Page',style: GoogleFonts.rubik(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}