import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'blog_item_card.dart';

class BlogListItems extends StatelessWidget {
  const BlogListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const BlogItemCard();
      },
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: 20.h,
      ),
    );
  }
}
