import 'package:flutter/material.dart';
import 'package:fly_app/data/dummy_data.dart';

class CustomSearch extends StatefulWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  State<CustomSearch> createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: const BorderSide(
      width: 0,
      color: Colors.transparent,
    ),
  );
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          // this happened cus scaffold color == search color
          // let's change it
          filled: true,
          fillColor: AppColor.searchColor,
          hintText: "Search",
          suffixIcon: const Icon(Icons.search),
          // we extract border cuz we will use it in differnt location
          border: _outlineInputBorder,
          enabledBorder: _outlineInputBorder,
          focusedBorder: _outlineInputBorder,
        ),
      ),
    );
  }
}
