import 'package:flutter/material.dart';
import 'package:untitled/widgets/features_section_widget.dart';
import 'package:untitled/widgets/hero_widget.dart';

import 'header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(),
            HeroWidget(),
            FeaturesSectionWidget(),
           // ProductSectionWidget(),
            //SubscriptionSectionWidget(),
            //FooterWidget(),
          ],
        ),
      ),
    );
  }
}
