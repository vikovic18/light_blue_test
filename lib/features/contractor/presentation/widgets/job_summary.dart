import 'package:flutter/material.dart';
import 'package:light_blue/core/app_export.dart';
import 'package:light_blue/features/contractor/presentation/widgets/pending_jobs.dart';

class JobSummaryWidget extends StatelessWidget {
  JobSummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.shadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          PendingJobsWidget(
            userImage: ImageConstant.imgFiRrFileAdd,
            myJobsText: "Job offers",
            jobsCounterText: "10 jobs",
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: PendingJobsWidget(
              userImage: ImageConstant.imgFiRrBriefcase,
              myJobsText: "My Jobs",
              jobsCounterText: "5 jobs",
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12.h),
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.outlineBluegray40026.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.v),
                CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                SizedBox(height: 8.v),
                SingleChildScrollView(
                  child: Text(
                    "Find a Job",
                    style: CustomTextStyles.titleSmallInstrumentSansWhiteA700,
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
