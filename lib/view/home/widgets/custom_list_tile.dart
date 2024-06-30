import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<TileModel> imagePaths = [
  TileModel(imagePath: 'assets/rooms/room-1.jpeg', label: 'Gladkova St., 25'),
  TileModel(imagePath: 'assets/rooms/room-2.jpeg', label: 'Gubina St., 11'),
  TileModel(imagePath: 'assets/rooms/room-3.jpeg', label: 'Trefoleva St., 47'),
  TileModel(imagePath: 'assets/rooms/room-4.jpeg', label: 'Sedova St., 22'),
  TileModel(imagePath: 'assets/rooms/room-5.jpeg', label: 'London St., 34'),
  TileModel(imagePath: 'assets/rooms/room-6.jpeg', label: 'Ikeja St., 53'),
  TileModel(imagePath: 'assets/rooms/room-7.jpeg', label: 'Diego St., 34'),
];

class TileModel {
  TileModel({required this.imagePath, required this.label});

  final String imagePath;
  final String label;
}

class CustomListTile extends StatefulWidget {
  const CustomListTile({
    required this.model,
    super.key,
  });

  final TileModel model;

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(left: 18.w, right: 18.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        image: DecorationImage(
          image: Image.asset(widget.model.imagePath).image,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(
            height: 42.h,
            width: expand ? screenWidth : 42.h,
            duration: const Duration(milliseconds: 1000),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40.h),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    widget.model.label,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ).animate().fadeIn(
                      delay: const Duration(milliseconds: 4800),
                      duration: const Duration(milliseconds: 500),
                    ),
                Row(
                  mainAxisAlignment:
                      expand ? MainAxisAlignment.end : MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        height: 38.h,
                        width: 38.h,
                        margin: EdgeInsets.only(right: expand ? 2.w : 0),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          size: 18,
                          Icons.chevron_right_rounded,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ).animate(
            onComplete: (s) {
              setState(() {
                expand = true;
              });
            },
          ).scale(
            delay: const Duration(milliseconds: 3700),
            duration: const Duration(milliseconds: 500),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
