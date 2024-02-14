import 'package:flutter/material.dart';
import 'package:light_blue/core/app_export.dart';

class PendingJobsWidget extends StatelessWidget {
  final String userImage;
  final String myJobsText;
  final String jobsCounterText;
  const PendingJobsWidget({Key? key, required this.userImage, required this.myJobsText, required this.jobsCounterText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBluegray400262.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          SizedBox(height: 13.v),
          Text(
            myJobsText,
            style: CustomTextStyles.titleSmallInstrumentSansGray900.copyWith(
              color: appTheme.gray900,
            ),
          ),
          Text(
            jobsCounterText,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.blueGray40001,
            ),
          ),
        ],
      ),
    );
  }
}
