import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truequation_assignment/src/custom_widgets/custom_card/custom_card.dart';

class MostPopular extends StatelessWidget {
  MostPopular({Key? key}) : super(key: key);

  List<String> imageList = [
    "https://4.imimg.com/data4/DB/KD/MY-12309389/casual-mens-shoes-500x500.jpg",
    "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/b2893432fb664907aa99aecb0117cb6d_9366/Adifom_SLTN_Shoes_Grey_HP6484_01_standard.jpg",
    "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/386919/01/sv01/fnd/IND/fmt/png/Comp-Men's-Shoes",
    "https://cdn.pixabay.com/photo/2015/08/05/09/55/mens-shoes-875950__340.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Most Popular',
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
              return CustomCard(
                images: imageList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
