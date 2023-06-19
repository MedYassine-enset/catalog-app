import 'dart:convert';
import 'package:catalog_app/pages/product.detaills.dart';
import 'package:catalog_app/pages/product.item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<dynamic> products=[];
  @override
  void initState() {
    super.initState();
    http.get(Uri.parse("http://26.148.76.102:9000/products")).then((resp) {
    setState(() {
      products=json.decode(resp.body);
    });
    }).catchError((err){
      print("****************Error********");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: ListView.builder(
          itemBuilder: (context,index){
            return ProductItem(product: products[index],details: false,);
          },
        itemCount: products.length,
      )
    );
  }
}
