import 'package:flutter/material.dart';
import 'package:light_blue/core/app_export.dart';
import 'package:light_blue/widgets/app_bar/appbar_leading_image.dart';
import 'package:light_blue/widgets/app_bar/appbar_title.dart';
import 'package:light_blue/widgets/app_bar/appbar_trailing_image.dart';
import 'package:light_blue/widgets/app_bar/custom_app_bar.dart';
// Ensure you have the necessary imports for your CustomAppBar, AppbarLeadingImage, etc.

// Define a constants class if not already defined

class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  CustomAppBarWidget({required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 44.h, // Assuming `h` is a predefined size extension
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(left: 24.h, top: 18.v, bottom: 17.v),
        onTap: () => scaffoldKey.currentState?.openDrawer(),
      ),
      centerTitle: true,
      title: AppbarTitle(text: "Dashboard"),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBell,
          margin: EdgeInsets.fromLTRB(24.h, 18.v, 24.h, 17.v),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // Customize this based on your AppBar's height
}
