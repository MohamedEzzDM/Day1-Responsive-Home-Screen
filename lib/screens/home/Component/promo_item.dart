import 'package:flutter/material.dart';

import '../../../size_config.dart';

class PromoItem extends StatelessWidget {
  const PromoItem({Key? key, required this.itemImagePath}) : super(key: key);
  final String itemImagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
      child: Stack(
        children: [

          Image.asset(itemImagePath,
            fit: BoxFit.cover,
            width: getProportionateScreenWidth(130),
            height: getProportionateScreenHeight(200),),
          Container(
            width: getProportionateScreenWidth(130),
            height: getProportionateScreenHeight(200),

            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,

                  colors: [Colors.black.withOpacity(0.3),Colors.black.withOpacity(0.1)]
              ),


            ),

          ),
        ],
      ),
    );
  }
}
