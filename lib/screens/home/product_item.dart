import 'package:carrot_market_01/models/product.dart';
import 'package:carrot_market_01/screens/home/product_detail.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  // 규칙 1 const 생성자는 초기화 되어야 하는 변수는 반드시 상수값이 되어야 한다.
  // const 는 컴파일 시점에 상수화 시킨다. final은 런타임 시점에 상수화 시킨다.
  final Product product;

  const ProductItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              product.urlToImage,
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0,),
          ProductDetail(),
        ],
      ),
    );
  }
}
