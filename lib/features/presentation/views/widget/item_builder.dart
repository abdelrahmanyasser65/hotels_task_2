import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:sizer/sizer.dart';

import '../../../../core/widgets/custom_text.dart';
import '../../../data/pet_model.dart';
class ItemBuilder extends StatelessWidget {
  const ItemBuilder({Key? key, required this.index}) : super(key: key);
final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 1.5.h,
          horizontal:2.h),
      height: 29.h,
      width: double.infinity,
      decoration:const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              RatingBar(
                  initialRating:hotelsModel[index].starts.toDouble(),
                  //direction: _isVertical ? Axis.vertical : Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 3.w,
                  itemPadding:
                  EdgeInsets.symmetric(horizontal: 0.4.w),

                  ratingWidget: RatingWidget(
                    full: Image.asset(
                      'assets/images/star.png',
                      width: 2.h,
                      height: 2.h,
                    ),
                    half:  Image.asset(
                      'assets/images/star.png',
                      width: 2.h,
                      height: 2.h,
                    ),
                    empty: Image.asset(
                      'assets/images/star.png',
                      width: 2.h,
                      height: 2.h,
                      color: Colors.grey,

                    ),
                  ), onRatingUpdate: (double value) {  },),
              SizedBox(width: 0.5.h,),
              CustomText(
                text: "Hotel",
                color: Colors.black,
                fontSize: 13.sp,fontWeight: FontWeight.w400,)
            ],
          ),
          SizedBox(height: 1.h,),
          SizedBox(
            width: double.infinity,
            child: CustomText(text: hotelsModel[index].name,
              color: Colors.black, fontSize: 16.sp,fontWeight: FontWeight.bold,maxLines: 1,),
          ),
          SizedBox(height: 1.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    right: 0.5.h
                ),
                decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 3.h,width: 5.h,
                child: Center(
                  child:CustomText(
                    text:  "${hotelsModel[index].reviewScore}",
                    fontSize: 12.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CustomText(text: hotelsModel[index].review,
                  color: Colors.black, fontSize: 12.sp),
              SizedBox(
                width: 0.6.h,
              ),
              Icon(Icons.location_on,size: 2.h,),
              SizedBox(
                width: 0.4.h,
              ),
              SizedBox(
                width: 20.h,
                child: CustomText(text: hotelsModel[index].address,
                  color: Colors.black, fontSize: 12.sp,maxLines: 1,),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: 1.h
            ),
            height: 11.h,width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                    width: 0.17.h,
                    color: Colors.grey
                )
            ),
            padding: EdgeInsets.all(1.h),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 3.h,width: 15.h,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade200,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: CustomText(
                          text: "Our lowest Price",
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.5.h,),
                    Row(
                      children: [
                        CustomText(text: hotelsModel[index].currency,
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp),
                        CustomText(text: "${hotelsModel[index].price}",
                            color: Colors.green.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                      ],
                    ),
                    SizedBox(height: 0.5.h,),
                    CustomText(
                      text: 'Renaissance',
                      color: Colors.black,
                      fontSize: 8.sp,fontWeight: FontWeight.normal,)
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: (){

                  },
                  child: Row(
                    children: [
                      CustomText(
                          text: "View Deal",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 2.h,)
                    ],
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(text: "More",

                  fontWeight: FontWeight.w500,
                  color: Colors.grey, fontSize: 12.sp,
                  textDecoration: TextDecoration.underline,

                ),
                SizedBox(width: 0.3.h,),
                CustomText(text: "prices",
                    textDecoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey, fontSize: 12.sp),
              ],
            ),
          )
        ],
      ),
    );
  }
}
