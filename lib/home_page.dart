import 'package:flutter/material.dart';

import 'header_widget.dart';
import 'hero_widget.dart';

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
           // ProductSectionWidget(),
            //SubscriptionSectionWidget(),
            //FooterWidget(),
          ],
        ),
      ),
    );
  }
}
