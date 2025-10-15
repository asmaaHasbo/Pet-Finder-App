import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetalisHeader extends StatelessWidget {
  const DetalisHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_ios,
              color: const Color(0xFF5FBDBD),
              size: 24.sp,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: const Color(0xFF5FBDBD),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 24.sp,
            ),
          ),
        ],
      ),
    );
  }
}