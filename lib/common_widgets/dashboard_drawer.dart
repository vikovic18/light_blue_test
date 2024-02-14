import 'package:flutter/material.dart';
import 'package:light_blue/common_widgets/drawer_heading.dart';
import 'package:light_blue/core/app_export.dart';

class DashboardMenuDraweritem extends StatefulWidget {
  final String title;
  final String name;
  final String imagePath;
  const DashboardMenuDraweritem({Key? key, required this.title, required this.name, required this.imagePath})
      : super(
          key: key,
        );

  @override
  State<DashboardMenuDraweritem> createState() => _DashboardMenuDraweritemState();
}

class _DashboardMenuDraweritemState extends State<DashboardMenuDraweritem> {
  @override
  Widget build(BuildContext context) {
    print("drawer");
    return Drawer(
      child: Container(
        width: 320.h,
        decoration: AppDecoration.fillLightblue400.copyWith(
          borderRadius: BorderRadiusStyle.customBorderLR20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DrawerHeading(name: widget.name, title: widget.title, imagePath: widget.imagePath),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.v),
                decoration: AppDecoration.fillWhiteA,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFiRrUser,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text(
                              "Profile",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFiRrChartHistogram,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "Reports",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 39.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFiRrShoppingBag,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "Materials Marketplace",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 39.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFiRrSettings,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "Settings",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Divider(),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFiRrFollowing,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "Support",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 39.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFiRrShield,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "Legal & Privacy",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFiRrSignOutAlt,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "Log out",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
