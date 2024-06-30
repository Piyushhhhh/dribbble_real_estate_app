import 'package:dribbble_real_estate_app/values/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SendWidget extends StatelessWidget {
  const SendWidget({required this.scale, super.key});

  final Animation<double> scale;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scale,
      child: Container(
        width: 46.h,
        height: 46.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.4),
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: SizedBox(
          width: 14.w,
          height: 14.w,
          child: SvgPicture.asset(
            'assets/svg/paper-plane-regular.svg',
            colorFilter: const ColorFilter.mode(
              AppColors.black,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
