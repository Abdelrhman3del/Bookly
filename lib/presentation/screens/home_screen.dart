import 'package:bookly/core/utils/app_constant.dart';
import 'package:bookly/core/utils/font_stayle.dart';
import 'package:bookly/presentation/widget/get_appbar_to_home.dart';
import 'package:bookly/presentation/widget/get_custom_item_in_list_viwe.dart';
import 'package:bookly/presentation/widget/get_listviwe_home_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List<Widget> f = [
    const GetCustomItemListView(),
    const GetCustomItemListView(),
    const GetCustomItemListView(),
    const GetCustomItemListView(),
    const GetCustomItemListView(),
    const GetCustomItemListView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(child: GetAppBarToHome()),
            const GetListView(),
            Text(AppConstant.bestSeller,
                style: TextStyleConstant.textStyle18
                    .copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                 Container(
                     height: 160,child: Image.asset(AppConstant.imageItem,),)
                ,const SizedBox(width: 20,),
                Text('Harry Potterand the Goblet of Fire',style: TextStyle(overflow: TextOverflow.ellipsis),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
