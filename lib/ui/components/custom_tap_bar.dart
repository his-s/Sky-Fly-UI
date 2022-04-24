import 'package:flutter/material.dart';
import 'package:fly_app/data/dummy_data.dart';

class CustomTapBar extends StatefulWidget {
  const CustomTapBar({Key? key}) : super(key: key);

  @override
  State<CustomTapBar> createState() => _CustomTapBarState();
}

class _CustomTapBarState extends State<CustomTapBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: travelMethods.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? AppColor.tapColor
                    : AppColor.searchColor,
                borderRadius: BorderRadius.circular(25),
              ),
              height: 40,
              child: Text(
                travelMethods[index],
                style: AppColor.tapTextStyle.copyWith(
                  color: currentIndex == index ? Colors.white : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
// there is no error here but i will restart again and romve this clip in editing 
// wait 
// now run our app after we added sizebox to listview 
// i don't know what happened 
// problem was i did't add height or width to container 