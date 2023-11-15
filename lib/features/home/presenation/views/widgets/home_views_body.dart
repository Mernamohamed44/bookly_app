import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presenation/views/widgets/bestseller_listview.dart';
import 'package:bookly_app/features/home/presenation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presenation/views/widgets/featured_listview_item.dart';
import 'package:flutter/material.dart';

class HomeViewsBody extends StatelessWidget {
  const HomeViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: CustomAppBar(),
              ),
              FeaturedListviewsItem(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: BestsellerListViews(),
          ),
        )
      ],
    );
  }
}
