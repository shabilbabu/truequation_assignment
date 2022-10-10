import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer1 extends StatelessWidget {
  const CustomContainer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: MediaQuery.of(context).size.width,
      decoration: const  BoxDecoration(
        color: Color.fromARGB(255, 44, 44, 44),
        image: DecorationImage(image: NetworkImage("https://wallup.net/wp-content/uploads/2019/09/09/32042-valerie-poxleitner-lights-singer-black-background-lights-women-brunettes-babes-face-smile.jpg"),fit: BoxFit.cover)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New item with \nFree shipping',
              style: GoogleFonts.acme(fontSize: 30.sp, color: Colors.white),
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              'Shop now',
              style: GoogleFonts.rubik(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 2.h,
              width: 70.w,
              decoration: const BoxDecoration(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
