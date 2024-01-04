import 'package:flutter/material.dart';
import 'package:git_mobile/src/ui_utils/fonts.dart';
import 'package:git_mobile/src/utils/src/colors/app_colors.dart';
import 'package:git_mobile/src/utils/src/helpers/ui_dimens.dart';


abstract class TextStyles {
  static const regularTitleText = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: UIDimens.size18,
    fontFamily: Fonts.regular
  );
  static const mediumTitleText = TextStyle(
      color: AppColors.primaryTextColor,
      fontSize: UIDimens.size18,
      fontFamily: Fonts.medium
  );
  static const regularSubTitleText = TextStyle(
      color: AppColors.secondaryTextColor,
      fontSize: UIDimens.size16,
      fontFamily: Fonts.regular
  );
  static const mediumSubTitleText = TextStyle(
      color: AppColors.primaryTextColor,
      fontSize: UIDimens.size16,
      fontFamily: Fonts.medium
  );
  static const regularBodyText = TextStyle(
      color: AppColors.primaryTextColor,
      fontSize: UIDimens.size14,
      fontFamily: Fonts.regular
  );
  static const mediumBodyText = TextStyle(
      color: AppColors.primaryTextColor,
      fontSize: UIDimens.size14,
      fontFamily: Fonts.medium
  );
  static const regularSmallText = TextStyle(
      color: AppColors.primaryTextColor,
      fontSize: UIDimens.size12,
      fontFamily: Fonts.regular
  );
  static const mediumSmallText = TextStyle(
      color: AppColors.primaryTextColor,
      fontSize: UIDimens.size12,
      fontFamily: Fonts.medium
  );

}
