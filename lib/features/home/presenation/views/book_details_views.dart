import 'package:flutter/material.dart';

import 'widgets/book_details_view_body.dart';

class BookDetailsViews extends StatelessWidget {
  const BookDetailsViews({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: BooKDetailsBody(),
    );
  }
}
