import 'package:flutter/material.dart';
import 'package:portfolio/pages/pagemobile.dart';
import 'package:portfolio/pages/pageweb.dart';

import '../userfull/responsive.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PageMobile(),
      web: PageWeb(),
    );
  }
}
