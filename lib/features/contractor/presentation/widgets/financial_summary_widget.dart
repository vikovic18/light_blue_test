import 'package:flutter/material.dart';
import 'package:light_blue/core/app_export.dart';
import 'package:light_blue/features/contractor/presentation/widgets/heading_recent_files.dart';

class FinancialSummaryWidget extends StatelessWidget {
  const FinancialSummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: HeadingRecentFilesWidget(
              recentFilesText: "Financial Summary",
              viewAllText: "See More",
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            padding: EdgeInsets.all(12.h),
            decoration: AppDecoration.shadow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgChart,
                  height: 74.v,
                  width: 329.h,
                ),
                SizedBox(height: 16.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "£1550 earned this month",
                    style: CustomTextStyles.titleMediumInterGray90001,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
