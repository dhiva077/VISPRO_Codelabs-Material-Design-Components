import 'package:flutter/material.dart';
import 'package:mdc_100_series/colors.dart';
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
    return Container(
      // ini latar belakang backLayer supaya nggak transparan
      color: kShrineLoginBackground,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: ListView(
        children: Category.values.map((category) {
          return Card(
            // tambahkan card agar tiap item terlihat terpisah
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: ListTile(
              title: Text(
                category.name,
                style: TextStyle(
                  color: category == currentCategory
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSurface,
                  fontWeight: category == currentCategory
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
              // kotak semua item
              tileColor: kShrineLoginBackground, // semua kotak warna ini
              // optional: kotak lebih gelap saat selected
              selectedTileColor: kShrineLoginBackground.withOpacity(0.7),
              selected: category == currentCategory,
              onTap: () => onCategoryTap(category),
            ),
          );
        }).toList(),
      ),
    );
  }
}
