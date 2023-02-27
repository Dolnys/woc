import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters';
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('coctails').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }
            final documents = snapshot.data!.docs;
            return Center(
                child: Image.network(snapshot.data?.docs[0]['image']));
          }),
      appBar: AppBar(
        title: const Text('Filters'),
      ),
    );
  }
}
