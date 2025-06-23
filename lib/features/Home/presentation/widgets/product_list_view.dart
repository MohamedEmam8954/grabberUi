import 'package:flutter/material.dart';
import 'package:grabber/core/utils/assets.dart';
import 'package:grabber/features/Home/data/models/product_model.dart';
import 'package:grabber/features/Home/presentation/widgets/fruits_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
    required this.onProductTap,
    required this.isSelected,
  });
  final void Function(ProductModel) onProductTap;
  final bool Function(ProductModel) isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 252,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return FruitsItem(
            isSelected: isSelected(products[index]),
            productModel: products[index],
            onProductTap: (value) {
              onProductTap(value);
            },
          );
        },
      ),
    );
  }

  static const List<ProductModel> products = [
    ProductModel(
        img: Assets.imagesFruitsBanana,
        productName: "Banana",
        price: 35,
        rating: 4.5,
        ratingCount: 245),
    ProductModel(
        img: Assets.imagesFruitsPepper,
        productName: "pepper",
        price: 35,
        rating: 4.5,
        ratingCount: 245),
    ProductModel(
        img: Assets.imagesFruitsOrange,
        productName: "Orange",
        price: 35,
        rating: 4.5,
        ratingCount: 245),
    ProductModel(
        img: Assets.imagesFruitsBanana,
        productName: "Banana",
        price: 35,
        rating: 4.5,
        ratingCount: 245),
    ProductModel(
        img: Assets.imagesFruitsBanana,
        productName: "Banana",
        price: 35,
        rating: 4.5,
        ratingCount: 245),
    ProductModel(
        img: Assets.imagesFruitsBanana,
        productName: "Banana",
        price: 35,
        rating: 4.5,
        ratingCount: 245),
    ProductModel(
        img: Assets.imagesFruitsBanana,
        productName: "Banana",
        price: 35,
        rating: 4.5,
        ratingCount: 245),
  ];
}
