import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class MapButton extends StatelessWidget {
  const MapButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 7.h,
        width: 20.h,
        padding:const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Image.asset("assets/images/map.png"),
      ),
    );
  }
}
