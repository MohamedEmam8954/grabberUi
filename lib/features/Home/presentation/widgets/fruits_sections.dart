import 'package:flutter/material.dart';
import 'package:grabber/features/Home/data/models/product_model.dart';
import 'package:grabber/features/Home/presentation/widgets/product_list_view.dart';

class FruitsSection extends StatelessWidget {
  const FruitsSection({
    super.key,
    required this.onProductTap,
    required this.isSelected,
  });
  final void Function(ProductModel) onProductTap;
  final bool Function(ProductModel) isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 19),
      child: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Fruits",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                "see all",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),

          /// product List View
          ProductListView(
            isSelected: (value) {
              return isSelected(value);
            },
            onProductTap: (p0) {
              onProductTap(p0);
            },
          )
        ],
      ),
    );
  }
}
