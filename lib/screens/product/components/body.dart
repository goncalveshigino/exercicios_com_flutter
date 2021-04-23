
import 'package:chair/models/product.dart';
import 'package:chair/screens/details/details_screen.dart';
import 'package:chair/screens/product/components/categories_list.dart';
import 'package:chair/screens/product/components/product_card.dart';
import 'package:chair/screens/product/components/search_box.dart';
import 'package:flutter/material.dart';


import 'constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(product: products[index],),
                          ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
