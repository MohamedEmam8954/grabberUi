class ProductModel {
  final String img;
  final String productName;
  final num price;
  final num rating;
  final int ratingCount;

  const ProductModel(
      {required this.img,
      required this.productName,
      required this.price,
      required this.rating,
      required this.ratingCount});
}
