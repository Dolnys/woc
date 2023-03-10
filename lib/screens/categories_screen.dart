import 'package:flutter/material.dart';
import 'package:woc/widgets/category_item.dart';
import 'package:woc/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: dummyCategories
          .map(
            (catData) => CategoryItem(
              color: catData.color,
              title: catData.title,
              id: catData.id,
            ),
          )
          .toList(),
    );
  }
}
