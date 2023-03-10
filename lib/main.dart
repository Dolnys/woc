import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:woc/firebase_options.dart';
import 'package:woc/screens/categories_coctails_screen.dart';
import 'package:woc/screens/coctail_detail_screen.dart';
import 'package:woc/screens/filters_screen.dart';
import 'package:woc/screens/tabs_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World Of Coctails',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Phudu',
            fontSize: 20,
            letterSpacing: 2,
          ),
        ),
        fontFamily: 'Concert One',
      ).copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.teal,
              secondary: Colors.cyan,
            ),
      ),
      routes: {
        '/': (context) => const TabsScreen(),
        CategoryCoctailsScreen.routeName: (context) =>
            const CategoryCoctailsScreen(),
        CoctailDetailScreen.routeName: (context) => const CoctailDetailScreen(),
        FiltersScreen.routeName: (context) => const FiltersScreen(),
      },
    );
  }
}
