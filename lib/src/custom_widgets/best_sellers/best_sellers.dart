import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truequation_assignment/src/custom_widgets/custom_card/custom_card.dart';

class BestSellers extends StatelessWidget {
   BestSellers({Key? key}) : super(key: key);

  List<String> imageList = [
    "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/13137110/2021/7/27/c99daa64-2b84-415c-8129-3a25658fe9cd1627373261770HIGHLANDERMenGreenSolidDenimJacket1.jpg",
    "https://m.media-amazon.com/images/I/61pStXHt1CL._UX522_.jpg",
    "https://www.apetogentleman.com/wp-content/uploads/2019/03/how-to-wear-denim-jean-jacket-men.jpg",
    "https://www.toptrendsguide.com/wp-content/uploads/2020/09/What-To-Wear-With-A-Denim-Jacket.jpg"

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Best Sellers',
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
