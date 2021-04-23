
import 'package:chair/screens/product/components/body.dart';
import 'package:chair/screens/product/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0, 
        title: Text("Chair Store"),
        centerTitle: false,
        actions: [IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {},
        )],
      );
  }
}
