import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truequation_assignment/src/custom_widgets/custom_card/custom_card.dart';

class Electronics extends StatelessWidget {
   Electronics({Key? key}) : super(key: key);

    List<String> imageList = [
    "https://images-eu.ssl-images-amazon.com/images/I/71OJvSS66jL._AC_UL600_SR600,400_.jpg",
    "https://media.istockphoto.com/photos/mobile-devices-picture-id178716575?k=20&m=178716575&s=612x612&w=0&h=Cpbs-ivT4RGz--xBlXFrHhTTPX5kaEcRd4FK4koduWM=",
    "http://gsmimpex.in/images/Electronics/Printers%20wholesaler.jpg",
    "http://gsmimpex.in/images/Electronics/Headset%20wholesaler.jpg",
    "https://cdn.pixabay.com/photo/2014/04/03/21/23/monitor-313011__340.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Electronics',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 250.h,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: imageList.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomCard(images: imageList[index],);
            },
          ),
        ),
      ],
    );
  }
}
