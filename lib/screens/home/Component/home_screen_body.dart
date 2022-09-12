import 'package:challenge_day1/screens/home/Component/promo_item.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../home_screen.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            width: double.infinity,
            height: getProportionateScreenHeight(230),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft:
                    Radius.circular(getProportionateScreenHeight(40)),
                    bottomRight:
                    Radius.circular(getProportionateScreenHeight(40)))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Text(
                  "Find Your",
                  style:
                  TextStyle(fontSize: getProportionateScreenHeight(30)),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  "Inspiration",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenHeight(50)),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(
                          getProportionateScreenHeight(20))),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        hintText: "Search you're looking for",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: getProportionateScreenWidth(14)),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(18),
                ),
                Text(
                  "Promo Today",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(18),
                ),


                // promo items list
                buildPromoTodayItems(),
                SizedBox(
                  height: getProportionateScreenHeight(18),
                ),
                ClipRRect(
                  borderRadius:
                  BorderRadius.circular(getProportionateScreenWidth(20)),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Image.asset(
                        'assets/images/three.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: getProportionateScreenHeight(200),
                      ),
                      Container(
                        width: double.infinity,
                        height: getProportionateScreenHeight(200),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.center,
                              colors: [
                                Colors.black,
                                Colors.black.withOpacity(0.2)
                              ]),
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.all(getProportionateScreenWidth(14)),
                        child: Text(
                          "Best Design",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: getProportionateScreenWidth(20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(18),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }


}

SizedBox buildPromoTodayItems() {
  return SizedBox(
    width: double.infinity,
    height: getProportionateScreenHeight(200),
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: itemImagesPath.length,
      itemBuilder: (BuildContext context, int index) {
        return PromoItem(itemImagePath: itemImagesPath[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: getProportionateScreenWidth(12),
        );
      },
    ),
  );
}