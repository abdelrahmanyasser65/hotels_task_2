import 'package:flutter/material.dart';
import 'package:hotels_task2/core/widgets/custom_text.dart';
import 'package:hotels_task2/features/data/pet_model.dart';
import 'package:hotels_task2/features/presentation/views/widget/item_builder.dart';
import 'package:hotels_task2/features/presentation/views/widget/item_image.dart';
import 'package:sizer/sizer.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,



      ),
      child: ListView.builder(
        padding: EdgeInsets.only(
          bottom: 3.h
        ),
        physics:const BouncingScrollPhysics(),
          itemBuilder: (context,index){
            return Padding(
              padding: EdgeInsets.only(
                top: 2.h
              ),
              child: Column(

                children: [
                  ItemImage(index: index),
                  ItemBuilder(index: index,),
                ],
              ),
            );
          },

          itemCount: hotelsModel.length),
    );

  }
}
