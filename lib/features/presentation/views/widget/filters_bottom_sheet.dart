import 'package:flutter/material.dart';
import 'package:hotels_task2/core/constants.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/widgets/custom_text.dart';
class FiltersBottomSheet extends StatefulWidget {
  const FiltersBottomSheet({Key? key}) : super(key: key);

  @override
  State<FiltersBottomSheet> createState() => _FiltersBottomSheetState();
}
double price=20;
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
         color: Colors.white.withOpacity(0.1)
         // color: Colors.black.withOpacity(0.005)
      ),
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
          SizedBox(width: 1.h,),
         Padding(
           padding:  EdgeInsets.only(
             top: 2.h,
             left: 2.h,
             right: 2.h,
             bottom: 1.h
           ),
           child: Row(
             children: [
               CustomText(text: "PRICE PER NIGHT",
                   color: Colors.black,
                   fontSize: 12.sp,fontWeight: FontWeight.w600,),
              const Spacer(),
               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   border: Border.all(
                     color: Colors.black,
                     width: 0.1.h
                   ),

                 ),
                 padding: EdgeInsets.all(
                   1.h
                 ),
                 child: Center(
                   child: CustomText(
                     text: "${price.round()}+ \$",
                     color: Colors.black,
                     fontSize: 14.sp,
                     fontWeight: FontWeight.w400,
                   ),
                 ),
               )
             ],
           ),
         ),
         Slider(
           max:540,
             min: 20,
             thumbColor: Colors.white,
             activeColor: Colors.blue.shade800,
             inactiveColor: Colors.blue,
             //divisions: 27,
             label: price.round().toString(),
             value: price,
             onChanged: (val){
               setState(() {
                 price=val;
               });
             }),
          Padding(
            padding:  EdgeInsets.only(
             left: 3.h,
             right: 3.h,
             bottom: 3.h,
            ),
            child: Row(
              children: [
                CustomText(text: "\$20",
                    color: Colors.grey, fontSize: 12.sp),
              const  Spacer(),
                CustomText(text: "\$${price.round()}+",
                    color: Colors.grey, fontSize: 12.sp),
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.symmetric(
              horizontal: 2.h
            ),
            child: CustomText
              (text: "RATING", color: Colors.black,
                fontSize: 12.sp,fontWeight: FontWeight.bold,),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 2.h,
              vertical: 2.h
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildContainerRate(
                  color: Colors.red.shade800,
                  rate: 0
                ),buildContainerRate(
                  color: Colors.yellow.shade800,
                  rate: 7
                ),buildContainerRate(
                  color: Colors.green.shade400,
                  rate: 7.5
                ),buildContainerRate(
                  color: Colors.green.shade600,
                  rate: 8
                ),buildContainerRate(
                  color: Colors.green.shade800,
                  rate: 8.5
                ),
              ],
            ),
          ),

          Padding(
            padding:EdgeInsets.only(
                left: 2.h,
                right: 2.h,
              top: 3.h,
              bottom: 2.h
            ),
            child: CustomText
              (text: "HOTEL CLASS", color: Colors.black,
              fontSize: 12.sp,fontWeight: FontWeight.w600,),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 2.h,

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildImageClass(image: star1),
                buildImageClass(image:star2),
                buildImageClass(image:star3),
                buildImageClass(image:star4),
                buildImageClass(image:star5),

              ],
            ),
          ),


          Padding(
            padding:EdgeInsets.only(
                left: 2.h,
                right: 2.h,
                top: 4.h,
                bottom: 2.h
            ),
            child: CustomText
              (text: "DISTANCE FROM", color: Colors.black,
              fontSize: 12.sp,fontWeight: FontWeight.w600,),
          ),
          Container(
            height: 0.1.h,
            width: double.infinity,
            color: Colors.grey,
            margin: EdgeInsets.only(
              left: 2.h,

            ),
          ),
          Padding(
            padding:EdgeInsets.all(
                2.h
            ),
            child:
            Row(
              children: [
                CustomText
                  (text: "Location", color: Colors.black,
                  fontSize: 12.sp,fontWeight: FontWeight.w500,),
             const   Spacer(),
                CustomText
                  (text: "City Center", color: Colors.grey,
                  fontSize: 14.sp,fontWeight: FontWeight.w400,),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,size: 2.h,)
              ],
            )
          ),
          Container(
            height: 0.1.h,
            width: double.infinity,
            color: Colors.grey,
            margin: EdgeInsets.only(
              left: 2.h,

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

  InkWell buildImageClass({
    image,onTap
}) {
    return
       InkWell(
      onTap:onTap,
      child: Image.asset(image,height: 5.h,width: 5.h,fit: BoxFit.cover,));}

  InkWell buildContainerRate({
    color,rate,onTap
}) {
    return InkWell(
      onTap: onTap,
      child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 5.h,
                  width: 5.h,
                  child: Center(
                    child: CustomText(
                      text: "$rate+",
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
    );
  }
}
