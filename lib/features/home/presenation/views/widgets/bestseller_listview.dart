import 'package:bookly_app/features/home/presenation/views/widgets/bestseller_list_views_item.dart';
import 'package:flutter/material.dart';

class BestsellerListViews extends StatelessWidget {
  const BestsellerListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: const BestsellerListViewsItem(),
        ),
        itemCount: 10);
  }
}
