import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kod_ghaseel_app/Utilites/app_assets/assets.dart';
import 'package:kod_ghaseel_app/Utilites/app_fonts/font.dart';
import 'package:kod_ghaseel_app/Utilites/app_style/style.dart';
import 'package:kod_ghaseel_app/shared/shared_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundOnBoarding(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 150.h),
                Text('مرحباً بك', style: AppTextStyle.whiteW800Size28Roboto),
                SizedBox(height: 20.h),

                Text(
                  'خدمة غسيل سيارات متنقلة نقدم الخدمة في مكان العميل بواسطة فريق مؤهل ومجهز. \n تهدف الخدمة إلى توفير راحة وسهولة لأصحاب السيارات من خلال تقديم خدمات غسيل عالية الجودة ومريحة للعملاء في مكانهم.',
                  style: AppTextStyle.whiteW500Size16.copyWith(
                    letterSpacing: -0.41,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 20.h),

                DefaultButton(
                  titleWidget: Text(
                    'تسجيــــــل الدخول',
                    style: AppTextStyle.primaryW600Size16,
                  ),
                  backgroundColorButton: Colors.white,
                  onPressed: () {},
                  borderRadius: BorderRadius.circular(20.r),
                ),
                SizedBox(height: 12.h),

                DefaultButton(
                  backgroundColorButton: Colors.transparent,
                  onPressed: () {},
                  borderSideColor: Colors.white,
                  titleWidget: Text(
                    'إنشــــــــاء حساب',
                    style: AppTextStyle.whiteW600Size16Roboto,
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundOnBoarding extends StatelessWidget {
  const BackgroundOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF01D0FE), Color(0xFF017D98), Color(0xFF009CBF)],
            ),
          ),
        ),
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.3,
              child: SvgPicture.asset(
                Assets.rectangleOnboarding,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: SvgPicture.asset(Assets.splashImage, fit: BoxFit.scaleDown),
            ),
          ],
        ),
      ],
    );
  }
}
