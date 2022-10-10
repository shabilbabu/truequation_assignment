import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truequation_assignment/src/custom_widgets/custom_card/custom_card.dart';

class HomeApplience extends StatelessWidget {
  HomeApplience({Key? key}) : super(key: key);

  List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEDAnEJZZF3WhBCz6c1YKAvy4Otax80gWrVagphOZ2ohS8UwHJm2McwScJsr1jd1LpXrw&usqp=CAU",
    "https://cliq2kart.com/wp-content/uploads/2019/12/new-perfect-home-appliances-injla-p101-single-burner-lpg-stove.jpg",
    "https://us.123rf.com/450wm/stockdeca/stockdeca2008/stockdeca200800019/153536959-kitchen-household-appliances-3d-rendering-assistance-concept.jpg?ver=6",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBXLhouWjyrQZVYpdtVRT6NH3UH9i5Tpq6Fg&usqp=CAU",  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Home Appliences',
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
               return  CustomCard(images: imageList[index],);
            },
          ),
        ),
      ],
    );
  }
}
