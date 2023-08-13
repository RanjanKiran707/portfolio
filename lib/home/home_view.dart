import 'package:flutter/material.dart';
import 'package:portfolio/home/home_desktop_view.dart';
import 'package:portfolio/home/home_mobile_view.dart';
import 'package:portfolio/utils/widgets/responsive.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
      mobile: HomeMobileView(),
      desktop: HomeDesktopView(),
    );
  }
}
