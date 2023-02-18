import 'package:flutter/material.dart';

class CategoryCoctailsScreen extends StatelessWidget {
  static const routeName = '/category-coctails';
  const CategoryCoctailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle ?? ''),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {},
      ),
    );
  }
}
