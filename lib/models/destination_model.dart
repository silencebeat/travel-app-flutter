import 'package:flutter_travel_ui_starter/models/activity_model.dart';
import 'package:flutter_travel_ui_starter/models/review_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;
  

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities
  });
}

List<Review> reviews = [
  Review(
    name: "candra",
    avatarImage: 'assets/images/stmarksbasilica.jpg',
    reviewText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elementum elit.',
    rating: 4
  ),
  Review(
    name: "Tono",
    avatarImage: 'assets/images/stmarksbasilica.jpg',
    reviewText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elementum elit.',
    rating: 5
  ),
  Review(
    name: "Jhony Yes Papa",
    avatarImage: 'assets/images/stmarksbasilica.jpg',
    reviewText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elementum elit.',
    rating: 4
  ),
  Review(
    name: "No Papa",
    avatarImage: 'assets/images/stmarksbasilica.jpg',
    reviewText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elementum elit.',
    rating: 5
  ),
  Review(
    name: "No Name",
    avatarImage: 'assets/images/stmarksbasilica.jpg',
    reviewText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elementum elit.',
    rating: 4
  ),
  Review(
    name: "What is my name",
    avatarImage: 'assets/images/stmarksbasilica.jpg',
    reviewText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elementum elit.',
    rating: 4
  ),
  Review(
    name: "Pak Sultan",
    avatarImage: 'assets/images/stmarksbasilica.jpg',
    reviewText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elementum elit.',
    rating: 3
  )

];

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elementum elit. Nulla hendrerit eros eget nisl elementum scelerisque. Praesent viverra suscipit nulla ac sollicitudin. Vivamus tincidunt interdum suscipit. Phasellus ac rutrum enim. Sed eget rutrum risus. Donec commodo at lacus quis malesuada. Aliquam dignissim dui ut ex pretium, nec lobortis erat dapibus.\n\nNunc sed euismod libero. Suspendisse potenti. Donec id volutpat purus. Aenean ornare posuere leo ac ornare. Sed accumsan congue odio at hendrerit. Donec in luctus augue. Phasellus accumsan justo sapien, maximus vulputate massa pretium vel. Morbi dapibus scelerisque neque eget iaculis.\n\nPhasellus eu lacinia augue. Ut egestas orci id facilisis aliquet. In vehicula velit sit amet magna condimentum volutpat. Quisque sed sagittis leo. Fusce vehicula malesuada odio, eu ultrices massa venenatis non. Sed tempor sapien at elit scelerisque viverra. Proin blandit, mauris nec pretium molestie, nunc dolor imperdiet tellus, eu faucibus ex justo vitae diam.\n\nSed tincidunt neque at purus scelerisque, a egestas ex faucibus. Maecenas in quam quis mi efficitur laoreet. Ut ac libero leo. Nullam ut dignissim mi. Mauris ac sagittis risus. Quisque vel suscipit dui. Maecenas nisl est, congue nec vehicula in, lobortis eget mauris.\n\nPraesent auctor id purus et sollicitudin. Donec massa neque, mattis sit amet auctor scelerisque, vestibulum sed nisl. Mauris congue at neque a viverra. Duis sodales risus quis luctus venenatis. Suspendisse mattis, velit eget dapibus lacinia, lacus ipsum ornare eros, vel malesuada sem turpis blandit turpis. Vivamus efficitur tincidunt odio, non mollis sapien pellentesque a. Pellentesque eget bibendum velit, nec pretium sapien.'
    , reviews: reviews
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gondola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elementum elit. Nulla hendrerit eros eget nisl elementum scelerisque. Praesent viverra suscipit nulla ac sollicitudin. Vivamus tincidunt interdum suscipit. Phasellus ac rutrum enim. Sed eget rutrum risus. Donec commodo at lacus quis malesuada. Aliquam dignissim dui ut ex pretium, nec lobortis erat dapibus.\n\nNunc sed euismod libero. Suspendisse potenti. Donec id volutpat purus. Aenean ornare posuere leo ac ornare. Sed accumsan congue odio at hendrerit. Donec in luctus augue. Phasellus accumsan justo sapien, maximus vulputate massa pretium vel. Morbi dapibus scelerisque neque eget iaculis.\n\nPhasellus eu lacinia augue. Ut egestas orci id facilisis aliquet. In vehicula velit sit amet magna condimentum volutpat. Quisque sed sagittis leo. Fusce vehicula malesuada odio, eu ultrices massa venenatis non. Sed tempor sapien at elit scelerisque viverra. Proin blandit, mauris nec pretium molestie, nunc dolor imperdiet tellus, eu faucibus ex justo vitae diam.\n\nSed tincidunt neque at purus scelerisque, a egestas ex faucibus. Maecenas in quam quis mi efficitur laoreet. Ut ac libero leo. Nullam ut dignissim mi. Mauris ac sagittis risus. Quisque vel suscipit dui. Maecenas nisl est, congue nec vehicula in, lobortis eget mauris.\n\nPraesent auctor id purus et sollicitudin. Donec massa neque, mattis sit amet auctor scelerisque, vestibulum sed nisl. Mauris congue at neque a viverra. Duis sodales risus quis luctus venenatis. Suspendisse mattis, velit eget dapibus lacinia, lacus ipsum ornare eros, vel malesuada sem turpis blandit turpis. Vivamus efficitur tincidunt odio, non mollis sapien pellentesque a. Pellentesque eget bibendum velit, nec pretium sapien.'
    , reviews: reviews
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elementum elit. Nulla hendrerit eros eget nisl elementum scelerisque. Praesent viverra suscipit nulla ac sollicitudin. Vivamus tincidunt interdum suscipit. Phasellus ac rutrum enim. Sed eget rutrum risus. Donec commodo at lacus quis malesuada. Aliquam dignissim dui ut ex pretium, nec lobortis erat dapibus.\n\nNunc sed euismod libero. Suspendisse potenti. Donec id volutpat purus. Aenean ornare posuere leo ac ornare. Sed accumsan congue odio at hendrerit. Donec in luctus augue. Phasellus accumsan justo sapien, maximus vulputate massa pretium vel. Morbi dapibus scelerisque neque eget iaculis.\n\nPhasellus eu lacinia augue. Ut egestas orci id facilisis aliquet. In vehicula velit sit amet magna condimentum volutpat. Quisque sed sagittis leo. Fusce vehicula malesuada odio, eu ultrices massa venenatis non. Sed tempor sapien at elit scelerisque viverra. Proin blandit, mauris nec pretium molestie, nunc dolor imperdiet tellus, eu faucibus ex justo vitae diam.\n\nSed tincidunt neque at purus scelerisque, a egestas ex faucibus. Maecenas in quam quis mi efficitur laoreet. Ut ac libero leo. Nullam ut dignissim mi. Mauris ac sagittis risus. Quisque vel suscipit dui. Maecenas nisl est, congue nec vehicula in, lobortis eget mauris.\n\nPraesent auctor id purus et sollicitudin. Donec massa neque, mattis sit amet auctor scelerisque, vestibulum sed nisl. Mauris congue at neque a viverra. Duis sodales risus quis luctus venenatis. Suspendisse mattis, velit eget dapibus lacinia, lacus ipsum ornare eros, vel malesuada sem turpis blandit turpis. Vivamus efficitur tincidunt odio, non mollis sapien pellentesque a. Pellentesque eget bibendum velit, nec pretium sapien.'
    , reviews: reviews
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gondola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elementum elit. Nulla hendrerit eros eget nisl elementum scelerisque. Praesent viverra suscipit nulla ac sollicitudin. Vivamus tincidunt interdum suscipit. Phasellus ac rutrum enim. Sed eget rutrum risus. Donec commodo at lacus quis malesuada. Aliquam dignissim dui ut ex pretium, nec lobortis erat dapibus.\n\nNunc sed euismod libero. Suspendisse potenti. Donec id volutpat purus. Aenean ornare posuere leo ac ornare. Sed accumsan congue odio at hendrerit. Donec in luctus augue. Phasellus accumsan justo sapien, maximus vulputate massa pretium vel. Morbi dapibus scelerisque neque eget iaculis.\n\nPhasellus eu lacinia augue. Ut egestas orci id facilisis aliquet. In vehicula velit sit amet magna condimentum volutpat. Quisque sed sagittis leo. Fusce vehicula malesuada odio, eu ultrices massa venenatis non. Sed tempor sapien at elit scelerisque viverra. Proin blandit, mauris nec pretium molestie, nunc dolor imperdiet tellus, eu faucibus ex justo vitae diam.\n\nSed tincidunt neque at purus scelerisque, a egestas ex faucibus. Maecenas in quam quis mi efficitur laoreet. Ut ac libero leo. Nullam ut dignissim mi. Mauris ac sagittis risus. Quisque vel suscipit dui. Maecenas nisl est, congue nec vehicula in, lobortis eget mauris.\n\nPraesent auctor id purus et sollicitudin. Donec massa neque, mattis sit amet auctor scelerisque, vestibulum sed nisl. Mauris congue at neque a viverra. Duis sodales risus quis luctus venenatis. Suspendisse mattis, velit eget dapibus lacinia, lacus ipsum ornare eros, vel malesuada sem turpis blandit turpis. Vivamus efficitur tincidunt odio, non mollis sapien pellentesque a. Pellentesque eget bibendum velit, nec pretium sapien.'
    , reviews: reviews
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et elementum elit. Nulla hendrerit eros eget nisl elementum scelerisque. Praesent viverra suscipit nulla ac sollicitudin. Vivamus tincidunt interdum suscipit. Phasellus ac rutrum enim. Sed eget rutrum risus. Donec commodo at lacus quis malesuada. Aliquam dignissim dui ut ex pretium, nec lobortis erat dapibus.\n\nNunc sed euismod libero. Suspendisse potenti. Donec id volutpat purus. Aenean ornare posuere leo ac ornare. Sed accumsan congue odio at hendrerit. Donec in luctus augue. Phasellus accumsan justo sapien, maximus vulputate massa pretium vel. Morbi dapibus scelerisque neque eget iaculis.\n\nPhasellus eu lacinia augue. Ut egestas orci id facilisis aliquet. In vehicula velit sit amet magna condimentum volutpat. Quisque sed sagittis leo. Fusce vehicula malesuada odio, eu ultrices massa venenatis non. Sed tempor sapien at elit scelerisque viverra. Proin blandit, mauris nec pretium molestie, nunc dolor imperdiet tellus, eu faucibus ex justo vitae diam.\n\nSed tincidunt neque at purus scelerisque, a egestas ex faucibus. Maecenas in quam quis mi efficitur laoreet. Ut ac libero leo. Nullam ut dignissim mi. Mauris ac sagittis risus. Quisque vel suscipit dui. Maecenas nisl est, congue nec vehicula in, lobortis eget mauris.\n\nPraesent auctor id purus et sollicitudin. Donec massa neque, mattis sit amet auctor scelerisque, vestibulum sed nisl. Mauris congue at neque a viverra. Duis sodales risus quis luctus venenatis. Suspendisse mattis, velit eget dapibus lacinia, lacus ipsum ornare eros, vel malesuada sem turpis blandit turpis. Vivamus efficitur tincidunt odio, non mollis sapien pellentesque a. Pellentesque eget bibendum velit, nec pretium sapien.'
    , reviews: reviews
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/venice.jpg',
    city: 'Venice',
    country: 'Italy',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/paris.jpg',
    city: 'Paris',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/newdelhi.jpg',
    city: 'New Delhi',
    country: 'India',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/saopaulo.jpg',
    city: 'Sao Paulo',
    country: 'Brazil',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/newyork.jpg',
    city: 'New York City',
    country: 'United States',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
