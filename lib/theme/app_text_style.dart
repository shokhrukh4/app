import 'package:flutter/material.dart';
import 'package:rent_app/theme/app_colors.dart';

abstract class AppTextStyle {
  static const TextStyle MainGreyStyle = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColors.mainGrey,
  );
  static const TextStyle MainCountry = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w500,
    fontSize: 22,
    color: AppColors.mainBlack,
  );
  static const TextStyle HouseBtn = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.mainWhite,
  );
  static const TextStyle MainBlackStyle = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: AppColors.mainBlack,
  );
  static const TextStyle NameHomeScreen = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: AppColors.mainWhite,
  );
  static const TextStyle HomeNameSubtitle = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColors.thirdGrey,
  );
  static const TextStyle NameDetailScreen = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w600,
    fontSize: 22,
    color: AppColors.mainWhite,
  );
  static const TextStyle CostStyle = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColors.mainBlue,
  );
  static const TextStyle DrawerMenu = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: AppColors.mainWhite,
  );
  static const TextStyle HomeStyle = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: AppColors.mainBlue,
  );
  static const TextStyle DrawerBlur = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: AppColors.mainBlue,
  );
  static const TextStyle DrawerWhite = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: AppColors.mainWhite,
  );
}
