import 'package:catalog_app/pages/home.page.dart';
import 'package:catalog_app/pages/product.detaills.dart';
import 'package:catalog_app/pages/products.page.dart';
import 'package:catalog_app/thmes/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyAppTheme.themes[1],
      routes: {
        "/home": (context) => HomePage(),
        "/products": (context) => ProductsPage(),
        "/productDetails": (context) => ProductsDetails(
            productId: ModalRoute.of(context)!.settings.arguments as int
        ),
      },
      initialRoute: "/home",
    );
  }
}

