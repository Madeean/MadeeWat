import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final int price;
  final double rating;

  DestinationModel({
    required this.id,
    required this.name,
    required this.city,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) {
    return DestinationModel(
      id: id,
      name: json['name'],
      city: json['City'],
      imageUrl: json['imageUrl'],
      price: json['price'],
      rating: json['rating'].toDouble(),
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, city, imageUrl, rating, price];
}
