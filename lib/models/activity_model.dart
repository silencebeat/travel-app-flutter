import 'package:flutter_travel_ui_starter/models/review_model.dart';

class Activity {
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;
  String description;
  List<Review> reviews;

  Activity({
    this.imageUrl,
    this.name,
    this.type,
    this.startTimes,
    this.rating,
    this.price,
    this.description,
    this.reviews
  });
}
