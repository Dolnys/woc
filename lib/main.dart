import 'package:flutter/material.dart';
import 'package:woc/screens/categories_coctails_screen.dart';
import 'package:woc/screens/categories_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World Of Coctails',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(fontFamily: 'Gloock', fontSize: 20),
        ),
        fontFamily: 'Concert One',
      ).copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.teal,
              secondary: Colors.cyan,
            ),
      ),
      routes: {
        '/': (context) => const CategoriesScreen(),
        CategoryCoctailsScreen.routeName: (context) =>
            const CategoryCoctailsScreen(),
      },
    );
  }
}
