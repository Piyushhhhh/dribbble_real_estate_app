import 'package:dribbble_real_estate_app/values/constants/app_colors.dart';
import 'package:dribbble_real_estate_app/values/constants/strings.dart';
import 'package:dribbble_real_estate_app/view/home/home_page.dart';
import 'package:dribbble_real_estate_app/view/home/widgets/bottom_nav/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          color: AppColors.darkOrange,
          onGenerateTitle: (context) => Strings.appName,
          theme: ThemeData(
            primaryColor: AppColors.darkOrange,
            primaryColorDark: const Color(0xFF1A212A),
            scaffoldBackgroundColor: const Color(0xFFFFFFFF),
            appBarTheme: const AppBarTheme(
              elevation: 0.3,
              backgroundColor: Color(0xFFFFFFFF),
            ),
          ),
          debugShowCheckedModeBanner: false,
          builder: (_, child) => Scaffold(
              extendBody: true,
              bottomNavigationBar: CustomBottomNavBar(
                items: [
                  SvgPicture.asset(
                    'assets/svg/search.svg',
                  ),
                  SvgPicture.asset(
                    'assets/svg/message-solid.svg',
                  ),
                  SvgPicture.asset(
                    'assets/svg/house-solid.svg',
                  ),
                  SvgPicture.asset(
                    'assets/svg/heart-solid.svg',
                  ),
                  SvgPicture.asset(
                    'assets/svg/heart-solid.svg',
                  ),
                ],
                onTap: (int) {},
                currentIndex: 2,
              ),
              body: const HomePage()),
        );
      },
    );
  }
}
