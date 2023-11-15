import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
class CustomListViewsItem extends StatelessWidget {
  const CustomListViewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 1.5/2.5,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testimage)
          )
        ),
      ),
    );
  }
}
