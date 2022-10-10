import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
   CustomCard({Key? key,required this.images}) : super(key: key);

  String images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120.h,
                width: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(images),fit: BoxFit.cover),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 15.h,
                          width: 45.w,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              '24%Off',
                              style: GoogleFonts.rubik(
                                fontSize: 9,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 15.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 100, 212, 104)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                            Text(
                              '4.4',
                              style: GoogleFonts.rubik(
                                  fontSize: 10, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Heading',
                style: GoogleFonts.rubik(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing',
                style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.fade,
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '₹ 1,200',
                    style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: const Color.fromARGB(255, 121, 30, 233)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    '₹1,200',
                    style: GoogleFonts.rubik(
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
