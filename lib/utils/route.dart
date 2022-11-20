
import 'package:flutter/material.dart';
import 'package:ncdmb/views/guest_area/events/all_events.dart';
import 'package:ncdmb/views/guest_area/others/ncdmb_overview/article_content_screen.dart';
import 'package:ncdmb/views/guest_area/others/ncdmb_overview/ncdmb_overview_screen.dart';
import 'package:ncdmb/views/guest_area/others/videos_screen.dart';
import 'package:ncdmb/views/guest_area/services/services_screen.dart';
import 'package:ncdmb/views/guest_area/staff_services/staff_services_category_screen.dart';
import '../views/guest_area/home/guest_home_screen.dart';
import '../views/notification/notification_screen.dart';
import '../views/welcome/walkthrough/walkthrough_screen.dart';
import '../views/welcome/splash/splash_screen.dart';

var customRoutes = <String, WidgetBuilder>{

  '/splash_screen': (context) => const SplashScreen(),
  '/walkthrough_screen': (context) => const WalkthroughScreen(),
  '/': (context) => const GuestHomeScreen(),
  '/guest_home_screen': (context) => const GuestHomeScreen(),
  '/notification_screen': (context) => const NotificationScreen(),
  '/all_events_screen': (context) => const AllEvents(),
  '/ncdmb_overview_screen': (context) => const NCDMBOverviewScreen(),
  '/article': (context) => const ArticleContentScreen(),
  '/videos': (context) => const VideosScreen(),
  '/staff_services': (context) => const StaffServicesCategoryScreen(),
  '/ncdmb_services': (context) => const ServicesScreen(),


};