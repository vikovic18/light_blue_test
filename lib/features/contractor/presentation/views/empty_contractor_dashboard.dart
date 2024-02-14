import 'package:flutter/material.dart';
import 'package:light_blue/common_widgets/app_bar.dart';
import 'package:light_blue/common_widgets/custom_profile.dart';
import 'package:light_blue/common_widgets/dashboard_drawer.dart';
import 'package:light_blue/core/app_export.dart';
import 'package:light_blue/features/contractor/presentation/widgets/empty_job_summary_widget.dart';
import 'package:light_blue/features/contractor/presentation/widgets/empty_jobs_widget.dart';
import 'package:light_blue/widgets/custom_bottom_bar.dart';

class EmptyContractorDashboard extends StatefulWidget {
  const EmptyContractorDashboard({Key? key}) : super(key: key);

  @override
  State<EmptyContractorDashboard> createState() => _EmptyContractorDashboardState();
}

class _EmptyContractorDashboardState extends State<EmptyContractorDashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBarWidget(scaffoldKey: _scaffoldKey),
      drawer: DashboardMenuDraweritem(
        name: "James S.",
        title: "Contractor",
        imagePath: ImageConstant.imgEllipse764x64,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6.v),
              CustomProfileWidget(
                name: "James",
                location: "Cambridge, United Kingdom",
                imagePath: ImageConstant.imgEllipse764x64,
              ),
              SizedBox(height: 24.v),
              SizedBox(
                height: 850.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
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
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EmptyJobSummaryWidget(),
                            SizedBox(height: 26.v),
                            Text(
                              "What can you help with?",
                              style: CustomTextStyles.headlineSmallGray90002,
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "Choose a category to start",
                              style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 24.v),
                            GridView.builder(
                              shrinkWrap: true,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 89.v,
                                crossAxisCount: 3,
                                mainAxisSpacing: 12.h,
                                crossAxisSpacing: 12.h,
                              ),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                List<String> jobs = ["Cleaning", "Electrical", "Construction", "Garden"];
                                List<String> imagePaths = [
                                  ImageConstant.imgCleaningIcon,
                                  ImageConstant.imgElectricityIcon,
                                  ImageConstant.imgConstruction,
                                  ImageConstant.imgGardenIcon,
                                ];
                                return EmptyJobsWidget(
                                  job: jobs[index],
                                  imagePath: imagePaths[index],
                                );
                              },
                            ),
                          ],
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
      bottomNavigationBar: CustomBottomBar(),
    ));
  }
}
