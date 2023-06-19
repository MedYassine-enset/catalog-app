import 'dart:convert';

import 'package:catalog_app/pages/product.item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsDetails extends StatefulWidget {
  final int productId;
  ProductsDetails({Key? key,required this.productId}) : super(key: key);

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  dynamic product=null;
  @override
  void initState() {
    super.initState();
    http.get(Uri.parse("http://26.148.76.102:9000/products/${widget.productId}"))
        .then((resp) {
      setState(() {
        product=json.decode(resp.body);
      });
    }).catchError((err){
      print("****************Error********");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products Details => ${widget.productId}"),
      ),
      body: Center(
        child:
        (product!=null)?
        ProductItem(product: product,details: true,)
      :Container()),
    );
  }
}
