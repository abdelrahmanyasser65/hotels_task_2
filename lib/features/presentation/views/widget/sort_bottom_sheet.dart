import 'package:flutter/material.dart';
import 'package:hotels_task2/core/constants.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/widgets/custom_text.dart';
class SortBottomSheet extends StatefulWidget {
  const SortBottomSheet({Key? key}) : super(key: key);

  @override
  State<SortBottomSheet> createState() => _SortBottomSheetState();
}
  int indexG=0;
class _SortBottomSheetState extends State<SortBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.black.withOpacity(0.05)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 8.h,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 19.h,
                ),
                CustomText(
                    text: "Sort by",
                    fontWeight: FontWeight.w500,
                    color: Colors.black,

                    fontSize: 14.sp),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
          ListView.separated(
            padding: EdgeInsets.only(
              left:2.h,
              top: 2.h
            ),
              physics:const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    setState(() {
                      indexG=index;
                    });

                  },
                  child: Row(
                    children: [
                      CustomText(
                          text: sortBy[index],
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp),
                     const Spacer(),
                 indexG==index?  const Icon(Icons.check,color: Colors.blue,):Container(),
                      SizedBox(width: 2.h,),
                    ],
                  ),
                );
              },
              separatorBuilder: (context,index){
                return
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 2.h
                    ),
                    width: double.infinity,
                    height: 0.3,
                    color: Colors.grey,
                  );
              },
              itemCount: sortBy.length)
        ],
      ),
    );
  }
}
