import 'package:flutter/material.dart';
import 'package:grabber/core/utils/assets.dart';
import 'package:grabber/features/Home/data/models/category_model.dart';
import 'package:grabber/features/Home/presentation/widgets/category_item.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: List.generate(
            category.length,
            (index) {
              return CategoryItem(categoryModel: category[index]);
            },
          ),
        ),
      ),
    );
  }

  static const List<CategoryModel> category = [
    CategoryModel(img: Assets.imagesCategoryFruits, title: "Fruits"),
    CategoryModel(img: Assets.imagesCategoryBeverages, title: "Berverages"),
    CategoryModel(img: Assets.imagesCategoryVegtables, title: "vegtables"),
    CategoryModel(img: Assets.imagesCategoryEggAndMilk, title: "Egg & Milk"),
    CategoryModel(img: Assets.imagesCategoryLaundry, title: "Laundry"),
  ];
}
