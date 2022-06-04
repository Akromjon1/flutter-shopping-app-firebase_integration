import 'package:flutter/material.dart';
import 'package:untitled/constants/controllers.dart';
import 'package:untitled/models/product.dart';
import 'package:untitled/screens/home/widgets/single_product.dart';
import 'package:get/get.dart';

class Cat extends StatelessWidget {
  final ProductModel productModel;

  const Cat({Key key, this.productModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if(productModel.category == "sushi"){
      return Obx(()=>GridView.count(
          crossAxisCount: 2,
          childAspectRatio: .63,
          padding: const EdgeInsets.all(10),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 10,

          children:  producsController.products.map((ProductModel product){

            return SingleProductWidget(product: product);

          }).toList()));
    }

  }
}
