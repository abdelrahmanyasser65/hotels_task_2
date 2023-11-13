
import 'package:flutter/material.dart';
import 'package:hotels_task2/features/presentation/views/widget/sort_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/widgets/custom_text.dart';
buildAppBar(context){
  return AppBar(
    backgroundColor: Colors.white,

    title: Container(

      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: (){

            },
            child: Row(
              children: [
                const Icon(Icons.filter_alt_sharp,color: Colors.blue,),
                CustomText(text: "Filters",
                  color: Colors.blue, fontSize: 14.sp,fontWeight: FontWeight.w500,),
              ],
            ),
          )
          ,InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,

                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  isScrollControlled: true,

                  builder: (context) {
                    return const SortBottomSheet();
                  });
            },
            child: Row(
              children: [
                const Icon(Icons.sort_outlined,color: Colors.blue,),
                CustomText(text: "Sort",
                  color: Colors.blue, fontSize: 14.sp,fontWeight: FontWeight.w500,),
              ],
            ),
          )
        ],
      ),
    ),
    shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        )),elevation: 0,
  );
}