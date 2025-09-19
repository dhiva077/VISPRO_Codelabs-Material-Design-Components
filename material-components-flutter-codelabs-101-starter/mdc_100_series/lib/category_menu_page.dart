// lib/category_menu_page.dart
import 'package:flutter/material.dart';
import 'model/product.dart'; // supaya enum Category kebaca

class CategoryMenuPage extends StatelessWidget {
  const CategoryMenuPage({
    Key? key,
    required this.currentCategory,
    required this.onCategoryTap,
  }) : super(key: key);

  final Category currentCategory;
  final ValueChanged<Category> onCategoryTap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: Category.values.map((category) {
        return ListTile(
          title: Text(category.name), // kalau error ganti manual string
          selected: category == currentCategory,
          onTap: () => onCategoryTap(category),
        );
      }).toList(),
    );
  }
}
