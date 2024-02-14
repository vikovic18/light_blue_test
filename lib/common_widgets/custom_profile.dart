import 'package:flutter/material.dart';
import 'package:light_blue/core/app_export.dart';
import 'package:light_blue/widgets/custom_icon_button.dart';

class CustomProfileWidget extends StatelessWidget {
  final String name;
  final String location;
  final String imagePath;
  const CustomProfileWidget({Key? key, required this.name, required this.location, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 62.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90.adaptSize,
            width: 90.adaptSize,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: imagePath,
                  height: 90.adaptSize,
                  width: 90.adaptSize,
                  radius: BorderRadius.circular(
                    45.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFiRrPencil,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.lightBlue400,
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
                      border: Border.all(
                        color: appTheme.whiteA700,
                        width: 3.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 2.v,
              bottom: 35.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, ${name}",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 1.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFiRrMarker,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 2.v,
                      ),
                      child: Text(
                        location,
                        style: CustomTextStyles.bodyMediumGray800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
