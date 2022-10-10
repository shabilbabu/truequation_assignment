import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truequation_assignment/src/custom_widgets/best_sellers/best_sellers.dart';
import 'package:truequation_assignment/src/custom_widgets/categories/categories.dart';
import 'package:truequation_assignment/src/custom_widgets/custom_container/custom_container1.dart';
import 'package:truequation_assignment/src/custom_widgets/custom_container2/custom_container2.dart';
import 'package:truequation_assignment/src/custom_widgets/electronic/electronics.dart';
import 'package:truequation_assignment/src/custom_widgets/home_appliences/home_appliences.dart';
import 'package:truequation_assignment/src/custom_widgets/most_popular/most_popular.dart';
import 'package:truequation_assignment/src/custom_widgets/new_arrival/new_arrival.dart';
import 'package:truequation_assignment/src/custom_widgets/popular_products/popular_products.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomContainer1(),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Categories(),
                    SizedBox(
                      height: 20.h,
                    ),
                     PopularProducts(),
                    SizedBox(
                      height: 20.h,
                    ),
                     Electronics(),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
              const NewArrival(
                title: 'NEW \nARRIVAL',
                subtitle: 'SPECIAL OFFER',
                offer: 'SPECIAL OFFER',
              ),
              SizedBox(
                height: 5.h,
              ),
              const NewArrival(
                title: 'SUMMER \nSALE',
                subtitle: 'UP TO 80% OFF',
                offer: 'SPECIAL OFFER',
              ),
              SizedBox(
                height: 5.h,
              ),
              const NewArrival(
                title: 'SUMMER \nSALE',
                subtitle: 'UP TO 80% OFF',
                offer: '50% OFF',
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                     BestSellers(),
                    SizedBox(
                      height: 20.h,
                    ),
                     HomeApplience(),
                    SizedBox(height: 20.h,),
                    
                  ],
                ),
              ),
              const CustomContainer2(),
              SizedBox(height: 5.h,),
              const NewArrival(title: 'NEW \nARRIVAL',offer: 'SPECIAL OFFER',subtitle: 'SPECIAL OFFER',),
              SizedBox(height: 5.h,),
              const NewArrival(title: 'SUMMER \nSALE',offer: 'SPECIAL OFFER',subtitle: 'UP TO 80% OFF',),
              SizedBox(height: 20.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                     MostPopular(),
                    SizedBox(height: 50.h,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
