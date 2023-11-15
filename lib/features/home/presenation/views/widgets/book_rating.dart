import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 17,),
        const SizedBox(width: 6.3,),
        const Text('4.8',style: Styles.textStyle16,),
        const SizedBox(width: 5,),
        Text('(248)',style: Styles.textStyle14.copyWith(
            color: Colors.grey
        ),)

      ],
    );
  }
}
