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
        Text(
          headerText,
          style: AppColor.headerTextStyle,
        ),
        const CircleAvatar(
          radius: 30,
        ),
      ],
    );
  }
}
