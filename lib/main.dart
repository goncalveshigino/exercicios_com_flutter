
import 'package:chair/screens/product/components/constants.dart';
import 'package:chair/screens/product/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme), 
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductScreen()
    );
  }
}