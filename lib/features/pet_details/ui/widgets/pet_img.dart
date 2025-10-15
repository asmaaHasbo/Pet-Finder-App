import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PetImg extends StatelessWidget {
  const PetImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 16.w),
      height: 280.h,
      decoration: BoxDecoration(
        color: const Color(0xFFD4E8EB),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(10.r),
          child: Image.network(
            'https://images.unsplash.com/photo-1505628346881-b72b27e84530?w=800',
            height: double.infinity,
            fit: BoxFit.cover,
            width: double.infinity,
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.pets, size: 100.sp, color: Colors.grey);
            },
          ),
        ),
      ),
    );
  }
}
