import 'package:flutter/material.dart';
import 'package:light_blue/core/app_export.dart';

class HeadingRecentFilesWidget extends StatelessWidget {
  final String recentFilesText;
  final String viewAllText;
  const HeadingRecentFilesWidget({Key? key, required this.recentFilesText, required this.viewAllText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          recentFilesText,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.gray90002,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            viewAllText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.lightBlue400,
            ),
          ),
        ),
      ],
    );
  }
}
