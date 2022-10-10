import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Profile Page',style: GoogleFonts.rubik(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}