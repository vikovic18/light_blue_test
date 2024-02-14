import 'package:flutter/material.dart';
import 'package:light_blue/common_widgets/app_bar.dart';
import 'package:light_blue/common_widgets/custom_profile.dart';
import 'package:light_blue/common_widgets/dashboard_drawer.dart';
import 'package:light_blue/core/app_export.dart';
import 'package:light_blue/features/contractor/presentation/widgets/heading_recent_files.dart';
import 'package:light_blue/features/property_owner/presentation/widgets/properties_file_card_widget.dart';
import 'package:light_blue/features/property_owner/presentation/widgets/properties_financial_summary_widget.dart';
import 'package:light_blue/features/property_owner/presentation/widgets/properties_job_summary.dart';
import 'package:light_blue/features/property_owner/presentation/widgets/property_quote_widget.dart';
import 'package:light_blue/widgets/custom_bottom_bar.dart';

class TenantDashboardScreen extends StatefulWidget {
  const TenantDashboardScreen({Key? key}) : super(key: key);

  @override
  State<TenantDashboardScreen> createState() => _PropertyOwnerDashboardScreenState();
}

class _PropertyOwnerDashboardScreenState extends State<TenantDashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            appBar: CustomAppBarWidget(scaffoldKey: _scaffoldKey),
            drawer: DashboardMenuDraweritem(name: "Hello, Hudson", title: "Tenant", imagePath: ImageConstant.imgEllipse71),
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6.v),
                    CustomProfileWidget(name: "Hudson", location: "Cambridge, United Kingdom", imagePath: ImageConstant.imgEllipse71),
                    SizedBox(height: 24.v),
                    SizedBox(
                      height: 850.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 786.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.blueGray30033,
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: Offset(
                                      0,
                                      4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    PropertiesJobSummaryWidget(),
                                    SizedBox(height: 23.v),
                                    Padding(
                                      padding: EdgeInsets.only(right: 24.h),
                                      child: HeadingRecentFilesWidget(
                                        recentFilesText: "Your Quotes",
                                        viewAllText: "View All",
                                      ),
                                    ),
                                    SizedBox(height: 13.v),
                                    PropertyQuoteWidget(),
                                    SizedBox(height: 23.v),
                                    Padding(
                                      padding: EdgeInsets.only(right: 24.h),
                                      child: HeadingRecentFilesWidget(
                                        recentFilesText: "Recent Files",
                                        viewAllText: "View All",
                                      ),
                                    ),
                                    SizedBox(height: 13.v),
                                    SizedBox(
                                      height: 123.v,
                                      child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (
                                          context,
                                          index,
                                        ) {
                                          return SizedBox(
                                            width: 12.h,
                                          );
                                        },
                                        itemCount: 4,
                                        itemBuilder: (context, index) {
                                          return PropertiesFileCardItemWidget();
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 24.v),
                                    PropertiesFinancialSummaryWidget()
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: CustomBottomBar()));
  }
}
