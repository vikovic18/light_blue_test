import 'package:flutter/material.dart';
import 'package:light_blue/core/app_export.dart';

class EmptyJobSummaryWidget extends StatelessWidget {
  const EmptyJobSummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v, horizontal: 12.v),
      decoration: AppDecoration.shadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                right: 6.h,
                bottom: 2.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 50.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.outlineBluegray400262.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFiRrBriefcase,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  SizedBox(height: 13.v),
                  Text(
                    "My Jobs",
                    style: CustomTextStyles.titleSmallInstrumentSansGray900,
                  ),
                  Text(
                    "0 jobs",
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 6.h),
              padding: EdgeInsets.symmetric(
                horizontal: 44.h,
                vertical: 21.v,
              ),
              decoration: AppDecoration.outlineBluegray40026.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgSearch,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "Find a Job",
                    style: CustomTextStyles.titleSmallInstrumentSansWhiteA700,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
