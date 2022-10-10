import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);

  List<String> textList = [
    'offers',
    'Electronics',
    "Mens's",
    "Women's",
    "Kid's",
    "Accessories",
  ];

  List<String> imageList = [
    "https://us.123rf.com/450wm/arcady31/arcady311801/arcady31180100072/93463190-special-offer-blot-splash-icon.jpg?ver=6",
    "https://ugtechmag.com/wp-content/uploads/2020/04/Odukar-Store-ugtechmag.jpeg",
    "https://images.squarespace-cdn.com/content/v1/54661df4e4b0c1af99306b69/1576244944473-DYSJTVOBYJ6WD0S55DRP/DSC09465.JPG?format=1500w",
    "https://media.istockphoto.com/photos/mature-beautiful-woman-with-red-hair-picture-id1221755378?b=1&k=20&m=1221755378&s=612x612&w=0&h=OWd3uLSGix_NPjWHyaWNgpZkGALEUNg3gq8DY9wNIdM=",
    "https://images.pexels.com/photos/1620760/pexels-photo-1620760.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://media.istockphoto.com/photos/mock-up-blank-empty-digital-tablet-screen-on-beige-fashion-women-picture-id1181376840?k=20&m=1181376840&s=612x612&w=0&h=nQ-zAJV0BmTKw-GNQGuM2NX5t1WzS8AbFB9ykV4if-4=",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Categories',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  children: [
                    Container(
                      height: 60.h,
                      width: 60.w,

                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(200),
                        image:  DecorationImage(
                          image: NetworkImage(
                              imageList[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      textList[index],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
