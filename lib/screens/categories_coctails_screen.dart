import 'package:flutter/material.dart';
import 'package:woc/data/dummy_data.dart';
import 'package:woc/widgets/coctail_item.dart';

class CategoryCoctailsScreen extends StatelessWidget {
  static const routeName = '/category-coctails';
  const CategoryCoctailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryCoctail = dummyCoctails.where((coctail) {
      return coctail.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle ?? ''),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CoctailItem(
            imageUrl: categoryCoctail[index].imageUrl,
            title: categoryCoctail[index].title,
            alcoholContent: categoryCoctail[index].alcoholContent,
            complexity: categoryCoctail[index].complexity,
          );
        },
        itemCount: categoryCoctail.length,
      ),
    );
  }
}
