import 'package:flutter/material.dart';
import 'package:light_blue/core/app_export.dart';

class EmptyJobsWidget extends StatelessWidget {
  final String job;
  final String imagePath;
  const EmptyJobsWidget({Key? key, required this.job, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBluegray400262.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: imagePath,
            height: 36.adaptSize,
            width: 36.adaptSize,
          ),
          SizedBox(height: 7.v),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              job,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }
}
