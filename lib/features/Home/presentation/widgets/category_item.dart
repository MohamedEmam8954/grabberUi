import 'package:flutter/material.dart';
import 'package:grabber/features/Home/data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          width: 60,
          height: 60,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            categoryModel.img,
          ),
        ),
        Text(
          categoryModel.title,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
