import 'package:flutter/material.dart';

class CategoryCoctailsScreen extends StatelessWidget {
  const CategoryCoctailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recepies'),
      ),
      body: const Center(
        child: Text('Coctails for the category'),
      ),
    );
  }
}
