import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truequation_assignment/src/features/bottom_navigation/view/bottom_view.dart';
import 'package:truequation_assignment/src/custom_widgets/new_arrival/new_arrival.dart';
import 'package:truequation_assignment/src/features/home/view/home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    ScreenUtilInit(
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BottomView(),
        );
      },
      designSize: const Size(411.42857142857144, 843.4285714285714),
    );
  }
}