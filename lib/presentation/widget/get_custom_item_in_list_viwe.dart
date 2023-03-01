import 'package:bookly/core/utils/app_constant.dart';
import 'package:flutter/material.dart';

class GetCustomItemListView extends StatelessWidget {
  const GetCustomItemListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
        AppConstant.imageItem,
      ))),
    );
  }
}
