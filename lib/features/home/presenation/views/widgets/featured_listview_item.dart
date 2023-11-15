import 'package:bookly_app/features/home/presenation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
class FeaturedListviewsItem extends StatelessWidget {
  const FeaturedListviewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.27,
      child: ListView.builder(
        physics:const BouncingScrollPhysics(),
         scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>const Padding(
            padding: EdgeInsets.only(right: 15),
            child: CustomListViewsItem(),
          ) , itemCount: 10),
    );
  }
}
