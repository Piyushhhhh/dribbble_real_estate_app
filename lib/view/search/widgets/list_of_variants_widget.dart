import 'package:dribbble_real_estate_app/values/constants/app_colors.dart';
import 'package:dribbble_real_estate_app/values/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListOfVariantsWidget extends StatelessWidget {
  const ListOfVariantsWidget({required this.scale, super.key});
  final Animation<double> scale;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scale,
      child: Container(
        height: 42.h,
        padding: EdgeInsets.only(left: 14.w, right: 8.w),
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(42.h),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 12.w,
              height: 12.w,
              margin: EdgeInsets.only(right: 6.w),
              child: SvgPicture.asset(
                'assets/svg/list-solid.svg',
              ),
            ),
            Text(
              Strings.listOfVariants,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
