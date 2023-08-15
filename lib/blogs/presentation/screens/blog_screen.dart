import 'package:flutter/material.dart';

import '../../../core/managers/size_manager.dart';
import '../widgets/blog_background_lines.dart';
import '../widgets/blog_list_items.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BlogBackgroundLines(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.padding25,
              vertical: AppPadding.padding16,
            ),
            child: BlogListItems(),
          ),
        ],
      ),
    );
  }
}
