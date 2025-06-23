import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grabber/core/utils/assets.dart';
import 'package:grabber/features/Home/data/models/product_model.dart';

class FruitsItem extends StatelessWidget {
  const FruitsItem(
      {super.key,
      required this.onProductTap,
      required this.productModel,
      required this.isSelected});
  final void Function(ProductModel) onProductTap;
  final ProductModel productModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          child: Column(
            spacing: 9,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Color(0xffF6F6F6),
                child: Stack(
                  children: [
                    /// image
                    Image.asset(
                      productModel.img,
                      width: 146,
                      height: 119,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    /// add product
                    Positioned(
                      bottom: 30,
                      right: 5,
                      child: GestureDetector(
                        onTap: () {
                          onProductTap(productModel);
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade200,
                          child: isSelected
                              ? Icon(Icons.delete)
                              : Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// product name
              Text(
                productModel.productName,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),

              /// rating
              Row(
                spacing: 4,
                children: [
                  SvgPicture.asset(Assets.imagesIconsStar),
                  Text(
                    "${productModel.rating} (${productModel.ratingCount})",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              /// price
              Text(
                "\$3.99",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              )
            ],
          ),
        )
      ],
    );
  }
}
