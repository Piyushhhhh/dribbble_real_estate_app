import 'package:dribbble_real_estate_app/values/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchFilterWidget extends StatelessWidget {
  const SearchFilterWidget({required this.scale, super.key});

  final Animation<double> scale;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scale,
      child: Container(
        width: 46.h,
        height: 46.h,
        decoration: const BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Icon(
            Icons.toc_outlined,
            size: 20,
          ),
        ),
      ),
    );
  }
}
