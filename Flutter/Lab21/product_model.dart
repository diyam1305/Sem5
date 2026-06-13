class ProductModel {
  final int id;
  final String title;
  final double price;
  final String category;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.category,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title']?.toString() ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      category: json['category']?.toString() ?? '',
    );
  }
  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'price': price, 'category': category};
  }
}
