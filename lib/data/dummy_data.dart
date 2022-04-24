// created list of trip from dummy data
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/trip_model.dart';

final List<Trip> trips = [
  Trip(
      locationName: "Paris",
      imgUrl:
          "https://images.pexels.com/photos/1461974/pexels-photo-1461974.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 120),
  Trip(
      locationName: "Rom",
      imgUrl:
          "https://images.pexels.com/photos/2678456/pexels-photo-2678456.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 270),
  Trip(
      locationName: "Spain",
      imgUrl:
          "https://images.pexels.com/photos/541217/pexels-photo-541217.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 340),
  Trip(
      locationName: "Bali",
      imgUrl:
          "https://images.pexels.com/photos/931018/pexels-photo-931018.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 500),
  Trip(
      locationName: "London",
      imgUrl:
          "https://images.pexels.com/photos/1837591/pexels-photo-1837591.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 250),
  Trip(
      locationName: "Cairo",
      imgUrl:
          "https://images.pexels.com/photos/3290075/pexels-photo-3290075.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      price: 300),
  // i replaced all images with it's own url
  // you will find all data in description
];

// not know why this error but every thing is right
final List<String> travelMethods = [
  "All",
  "Flight",
  "Train",
  "Car",
  "Bus",
  "Cruise",
];
// we now prepare our dummy data and all app string
const String headerText = "Where would \nyou like to travel?";

class AppColor {
  static Color searchColor = const Color.fromARGB(255, 231, 229, 229);
  static Color tapColor = const Color.fromARGB(255, 246, 85, 74);
  static Color mainTextColor = Colors.black;
  static Color cardColor = Colors.white;
  static TextStyle headerTextStyle = GoogleFonts.roboto(
    color: mainTextColor,
    fontSize: 35,
    fontWeight: FontWeight.bold,
  );
  static TextStyle tapTextStyle = GoogleFonts.roboto(
    color: tapColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle cardTextStyle = GoogleFonts.roboto(
    color: cardColor,
    fontSize: 30,
    fontWeight: FontWeight.w500,
  );
}
