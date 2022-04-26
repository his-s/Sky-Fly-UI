import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../data/dummy_data.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: AutoSizeText(
            headerText,
            style: AppColor.headerTextStyle,
          ),
        ),
        const CircleAvatar(
          radius: 30,
        ),
      ],
    );
  }
}
