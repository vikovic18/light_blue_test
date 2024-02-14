import 'package:flutter/material.dart';
import 'package:light_blue/core/app_export.dart';
import 'package:light_blue/theme/app_decoration.dart';

class DrawerHeading extends StatelessWidget {
  const DrawerHeading({Key? key, required this.name, required this.title, required this.imagePath}) : super(key: key);

  final String name;
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillLightblue400,
      child: Row(
        children: [
          CustomImageView(
            imagePath: imagePath,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              32.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: CustomTextStyles.titleLargeWhiteA700,
                ),
                Text(
                  title,
                  style: CustomTextStyles.bodyMediumBluegray50,
                ),
                SizedBox(
                  width: 124.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFiRrStar,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 3.v),
                      ),
                      Text(
                        "5.0",
                        style: CustomTextStyles.bodyMediumBluegray50,
                      ),
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 7.v),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray50,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Text(
                        "(53 reviews)",
                        style: CustomTextStyles.bodyMediumBluegray50,
                      ),
                    ],
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
