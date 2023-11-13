import 'package:flutter/material.dart';
import 'package:hotels_task2/core/constants.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/widgets/custom_text.dart';
class FiltersBottomSheet extends StatefulWidget {
  const FiltersBottomSheet({Key? key}) : super(key: key);

  @override
  State<FiltersBottomSheet> createState() => _FiltersBottomSheetState();
}
int indexG=0;
class _FiltersBottomSheetState extends State<FiltersBottomSheet> {
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
                SizedBox(width: 2.h,),
                CustomText(
                text: "Reset",
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                textDecoration: TextDecoration.underline,
                fontSize: 14.sp),
                SizedBox(width: 13.h,),
                CustomText(
                    text: "Filters",
                    fontWeight: FontWeight.w600,
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
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 3.h,horizontal: 4.h
            ),
            height: 12.h,width: double.infinity,
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 5.h,width: double.infinity,
              child: Center(
                child: CustomText(
                  text: "Show results",
                  color: Colors.white,fontSize: 13.sp,fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
