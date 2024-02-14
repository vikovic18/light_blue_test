import 'package:flutter/material.dart';
import 'package:light_blue/features/contractor/presentation/views/contractor_dashboard.dart';
import 'package:light_blue/features/contractor/presentation/views/empty_contractor_dashboard.dart';
import 'package:light_blue/features/property_owner/presentation/views/empty_property_owner_dashboard.dart';
import 'package:light_blue/features/property_owner/presentation/views/property_owner_dashboard.dart';
import 'package:light_blue/features/tenant/presentation/views/tenant_dashboard.dart';

class AppRoutes {
  static const String contractorDashboardPage = '/contractor_dashboard_page';
  static const String emptyContractorDashboardPage = './empty_contractor_dashboard_page';
  static const String propertyOwnerDashboardPage = '/propertyOwner_dashboard_page';
  static const String emptyPropertyOwnerDashboardPage = '/empty_propertyOwner_dashboard_page';
  static const String tenantDashboardPage = '/tenant_dashboard_page';

  static Map<String, WidgetBuilder> routes = {
    contractorDashboardPage: (context) => ContractorDashboardScreen(),
    emptyContractorDashboardPage: (context) => EmptyContractorDashboard(),
    propertyOwnerDashboardPage: (context) => PropertyOwnerDashboardScreen(),
    emptyPropertyOwnerDashboardPage: (context) => EmptyPropertyOwnerScreen(),
    tenantDashboardPage: (context) => TenantDashboardScreen()
  };
}
