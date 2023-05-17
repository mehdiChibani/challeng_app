

import 'dart:convert';

class Product {

  String name;
  String company;
  double price;
  String description;
  String picture;

  Product(
      {required this.name,
      required this.company,
      required this.price,
      required this.description,
      required this.picture
  });

factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      company: json['company'],
      price: json['price'],
      description: json['description'],
      picture: json['picture'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['company'] = company;
    data['price'] = price;
    data['description'] = description;
    data['picture'] = picture;
    return data;
  }

  static Map<String, dynamic> toMap(Product product) => {
        'name': product.name,
        'company': product.company,
        'price': product.price,
        'description': product.description,
        'picture': product.picture,
      };

  static String encode(List<Product> musics) => json.encode(
        musics
            .map<Map<String, dynamic>>((music) => Product.toMap(music))
            .toList(),
      );

  static List<Product> decode(String musics) =>
      (json.decode(musics) as List<dynamic>)
          .map<Product>((item) => Product.fromJson(item))
          .toList();


}
