import 'package:flutter/material.dart';

import '../../../blogs/presentation/widgets/blog_background_lines.dart';
import '../../../core/managers/size_manager.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

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
            child: Center(
              child: Text('الطاهر'),
            ),
          ),
        ],
      ),
    );
  }
}
