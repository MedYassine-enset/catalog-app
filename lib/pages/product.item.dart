import 'package:catalog_app/pages/product.detaills.dart';
import 'package:flutter/material.dart';
class ProductItem extends StatelessWidget {
  final dynamic product;
  final bool details;
  const ProductItem({Key? key,required this.product,required this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "${product['name']}"
                            ),
                            Text(
                                "${product["price"]} MAD"
                            ),
                            if (product["promotion"]==true)
                              Icon(
                                Icons.heart_broken,
                                color: Colors.red,
                              ),
                            Row(
                              children: [
                                for(int i=0;i<product['stars']; i++)
                                  Icon(Icons.star,color: Colors.amber,size: 22,)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                  ),
                  InkWell(
                    onTap: (){
                      /*Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>ProductsDetails(
                            productId: product['id']
                            ,))
                      );*/
                      Navigator.pushNamed(context, "/productDetails"
                          ,arguments:product['id'] );
                    },
                    child: Image(
                        width: 200,
                        image: AssetImage("${product['image']}")),
                  )
                ],
              ),
            ),
            if(details==true)
              Card(
                child: Text("${product['description']}"),
              )
          ],
        ),
      ),
    );
  }
}
