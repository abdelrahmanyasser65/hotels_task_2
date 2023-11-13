import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../data/pet_model.dart';
class ItemImage extends StatelessWidget {
  const ItemImage({Key? key, required this.index}) : super(key: key);
final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        ClipRRect(
          borderRadius:const BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
          child: Image.network(hotelsModel[index].image,
            height: 20.h,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          height: 5.h,width: 5.h,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
           shape: BoxShape.circle
          ),
          margin:  EdgeInsets.symmetric(
            horizontal: 2.h,
            vertical: 2.h
          ),
          child:const Icon(Icons.favorite_border,color: Colors.white,),
        )
      ],
    );
  }
}
