import 'package:flutter/material.dart';
import 'package:grabber/features/Home/data/models/product_model.dart';
import 'package:grabber/features/Home/presentation/widgets/banner_carsoule_slider.dart';
import 'package:grabber/features/Home/presentation/widgets/cart_widget.dart';
import 'package:grabber/features/Home/presentation/widgets/category_list_item.dart';
import 'package:grabber/features/Home/presentation/widgets/fruits_sections.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final List<ProductModel> cart = [];

  void toggleProduct(ProductModel product) {
    setState(() {
      if (cart.contains(product)) {
        cart.remove(product);
      } else {
        cart.add(product);
      }
    });
  }

  bool isSelected(ProductModel product) {
    return cart.contains(product);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 17,
                  children: [
                    /// banner
                    BannerCarouselSilder(),

                    /// CategoryListItem

                    CategoryListItem(),

                    /// fruit Section

                    FruitsSection(
                      onProductTap: (value) {
                        toggleProduct(value);
                      },
                      isSelected: (value) {
                        return isSelected(value);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      CartWidget(cart: cart),
    ]);
  }
}
