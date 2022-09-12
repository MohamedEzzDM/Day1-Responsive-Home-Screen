import 'package:challenge_day1/screens/home/Component/home_screen_body.dart';
import 'package:challenge_day1/screens/home/Component/promo_item.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
      ),
      body: const HomeScreenBody(),
    );
  }
}

List<String> itemImagesPath = [
  'assets/images/one.jpg',
  'assets/images/two.jpg',
  'assets/images/four.jpg'
];
