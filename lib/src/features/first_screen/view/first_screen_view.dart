import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreenView extends StatelessWidget {
  const FirstScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'DIKAZO',
              style: GoogleFonts.rubik(fontSize: 20, color: Colors.black),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.h,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Color.fromARGB(255, 44, 44, 44)),
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
            ),
            SizedBox(height: 15.h,),
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: 20.w),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Text('Categories',style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 18
                   ),),
                   SizedBox(height: 10.h,),
            SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.w),
                      child: Column(
                        children: [
                          Container(
                            height: 60.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: Colors.black
                            ),
                          ),
                          SizedBox(height: 5.h,),
                          Text('offer')
                        ],
                      ),
                      
                    );
                  },
                ),
            ),
            SizedBox(height: 20.h,),
            Text('Popular Products')
                 ],
               ),
             ),
            
          ],
        ),
      ),
    );
  }
}
