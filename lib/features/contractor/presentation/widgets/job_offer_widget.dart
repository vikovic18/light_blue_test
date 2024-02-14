// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:light_blue/core/app_export.dart';
import 'package:light_blue/widgets/custom_icon_button.dart';
import 'package:light_blue/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class JobOfferWidget extends StatelessWidget {
  String radioGroup = "";
  JobOfferWidget({
    Key? key,
    required this.radioGroup,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImageHere,
            height: 100.adaptSize,
            width: 100.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sink Repair",
                  style: CustomTextStyles.titleLargeGray900,
                ),
                Text(
                  "10 Regent Street, W1 7SK",
                  style: CustomTextStyles.bodySmallBluegray400,
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFiRrMarker,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(top: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "200m",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.v),
                CustomRadioButton(
                  text: "Clara Smith",
                  value: "Clara Smith",
                  groupValue: radioGroup,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 16.v),
            child: Column(
              children: [
                CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFiRrMapMarker,
                  ),
                ),
                SizedBox(height: 12.v),
                CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFiRrComment,
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
