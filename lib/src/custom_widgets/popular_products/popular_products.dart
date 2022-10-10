import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truequation_assignment/src/custom_widgets/custom_card/custom_card.dart';

class PopularProducts extends StatelessWidget {
  PopularProducts({Key? key}) : super(key: key);

  List<String> imageList = [
    "https://img.freepik.com/free-photo/portrait-dark-skinned-cheerful-woman-with-curly-hair-touches-chin-gently-laughs-happily-enjoys-day-off-feels-happy-enthusiastic-hears-something-positive-wears-casual-blue-turtleneck_273609-43443.jpg?w=2000",
    "https://images.unsplash.com/photo-1541101767792-f9b2b1c4f127?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80",
    "https://post.healthline.com/wp-content/uploads/2020/09/happy_woman_outdoors_clouds-1200x628-facebook.20180427215822123-1200x628.jpg",
    "https://media.istockphoto.com/photos/pretty-african-american-woman-freelancer-using-laptop-at-home-picture-id1387138238?b=1&k=20&m=1387138238&s=170667a&w=0&h=FixxBQ0J0iT-tpD7CfLRnUaCNxRwxGg-04BXqevUTl4=",
    "https://cdn.thetealmango.com/wp-content/uploads/2022/02/Yael-Shelbia.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Popular Products',
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
