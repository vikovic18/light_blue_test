// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:light_blue/core/app_export.dart';
import 'package:light_blue/widgets/custom_icon_button.dart';
import 'package:light_blue/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class PropertyQuoteWidget extends StatelessWidget {
  String radioGroup = "";
  PropertyQuoteWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.h),
      decoration: AppDecoration.outlineBlueGray,
      child: Column(
        children: [
          SizedBox(height: 12.v),
          Container(
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.outlineBluegray400262.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImageHere,
                  height: 91.adaptSize,
                  width: 91.adaptSize,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFiRrHomeGray90002,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "Main home",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "Sink Repair",
                        style: CustomTextStyles.titleMediumInterGray90002,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "10 Regent Street, W1 7SK",
                        style: CustomTextStyles.bodySmallBluegray400,
                      ),
                      SizedBox(height: 3.v),
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
                  padding: EdgeInsets.only(bottom: 55.v),
                  child: CustomIconButton(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFiRrComment,
                    ),
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
