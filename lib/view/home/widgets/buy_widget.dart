import 'package:dribbble_real_estate_app/values/constants/app_colors.dart';
import 'package:dribbble_real_estate_app/values/constants/strings.dart';
import 'package:dribbble_real_estate_app/view/home/widgets/animated_count_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyWidget extends StatelessWidget {
  const BuyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 160.w,
      decoration: const BoxDecoration(
        color: AppColors.lightOrange,
        shape: BoxShape.circle,
      ),
      child: Column(
        children: [
          12.verticalSpace,
          Text(
            Strings.buy,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
          28.verticalSpace,
          const AnimatedCountText(
            countEnd: 1034,
            textColor: AppColors.white,
          ),
          2.verticalSpace,
          Text(
            Strings.offers,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    )
        .animate(delay: const Duration(milliseconds: 1500))
        .scale(duration: const Duration(milliseconds: 1000));
  }
}
