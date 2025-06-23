import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grabber/core/utils/assets.dart';
import 'package:grabber/features/Home/data/models/product_model.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
    required this.cart,
  });

  final List<ProductModel> cart;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      padding: EdgeInsets.symmetric(vertical: 17),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        spacing: 5,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.5,
            height: 40,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: cart.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Image.asset(cart[index].img, fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
            child: VerticalDivider(
              color: Colors.white,
            ),
          ),
          Text(
            "View Basket",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Badge(
            backgroundColor: Colors.red,
            label: Text(
              cart.length.toString(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            child: SvgPicture.asset(
              Assets.imagesIconsCart,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          )
        ],
      ),
    );
  }
}
