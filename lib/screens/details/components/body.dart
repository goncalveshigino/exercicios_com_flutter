

import 'package:chair/models/product.dart';
import 'package:chair/screens/details/components/list_of_colors.dart';
import 'package:chair/screens/details/components/product_poster.dart';
import 'package:chair/screens/product/components/constants.dart';
import 'package:flutter/material.dart';


import 'chat_and_add_cart.dart';

class BodyDetails extends StatelessWidget {

  final Product product;

  const BodyDetails({Key key, this.product}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)
                  )
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Hero(
                           tag: '${product.id}',
                          child: ProductPoster(
                          size: size, 
                          image: product.image
                        ),
                    ),
                  ),
                  ListOfColors(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: kSecondaryColor),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(product.description, style: TextStyle(color: kTextLightColor),
                    ),
                  ), 
                  SizedBox(height: kDefaultPadding,)
                ],
              ),
            ), 
            ChatAndAddToCart()
          ],
      ),
        ),
    );
  }
}

