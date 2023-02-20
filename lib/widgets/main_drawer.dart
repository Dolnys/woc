import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildListTile(String title, IconData icon) {
      return ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            fontFamily: 'Phudu',
          ),
        ),
      );
    }

    return Drawer(
      backgroundColor: const Color.fromARGB(255, 223, 223, 223),
      child: Column(
        children: [
          Container(
            color: Colors.teal,
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: const Text(
              'World of Coctails',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildListTile(
            'Coctails',
            Icons.local_bar,
          ),
          buildListTile(
            'Filter',
            Icons.filter_alt,
          )
        ],
      ),
    );
  }
}
