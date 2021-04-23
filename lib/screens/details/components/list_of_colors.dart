
import 'package:chair/screens/details/components/dots.dart';
import 'package:chair/screens/product/components/constants.dart';
import 'package:flutter/material.dart'; 

class ListOfColors extends StatelessWidget {
  const ListOfColors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorDot(
            fillColor: Color(0xFF80989A),
            isSelected: true,
          ),
          ColorDot(
            fillColor: Color(0xFFFF5200),
        
          ), 
          ColorDot(
            fillColor:kPrimaryColor,
            
          )
        ],
      ),
    );
  }
}

