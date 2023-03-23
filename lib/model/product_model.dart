class ProductModel {
  int? id;
  String? image;
  String? name;
  String? details;
  ProductModel? productModel;
  double? price;
  int? quantity;

  ProductModel(
      {this.details,
      this.id,
      this.productModel,
      this.image,
      this.name,
      this.price,
      this.quantity});
}

List<ProductModel> productList = [
  ProductModel(
      details:
          "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the",
      id: 1,
      image: "images/5.png",
      name: "Audio-Technica ATH-M50x\nHeadphone",
      price: 120,
      quantity: 1),
  ProductModel(
      details:
          "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the",
      id: 2,
      image: "images/4.png",
      name: "Audio-Technica ATH-M50x\nHeadphone",
      price: 200,
      quantity: 1),
];
