import 'package:flutter/material.dart';
class Category {
  final int categoryId;
  final String name;
  Category({this.categoryId, this.name});
}

final PlaneCategory = Category(
  categoryId: 0,
  name: 'Plane',
);

final CruiseCategory = Category(
  categoryId: 1,
  name: 'Cruise',
);



final categories = [
  PlaneCategory,
  CruiseCategory,
];
