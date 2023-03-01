import 'package:bookly/presentation/widget/get_custom_item_in_list_viwe.dart';
import 'package:flutter/material.dart';

class GetListView extends StatelessWidget {
  const GetListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => const GetCustomItemListView(),
        itemCount: 5,
      ),
    );
  }
}
