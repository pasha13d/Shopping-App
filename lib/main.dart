import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/pages/food/popular_food_details.dart';
import 'package:shopping_app/pages/food/recommended_food_detail.dart';
import 'package:shopping_app/pages/home/main_food_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MainFoodPage(),
      // home: PopularFoodDetails(),
      home: RecommendedFoodDetail(),
    );
  }
}
