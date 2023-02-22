import 'package:flutter/material.dart';
import 'package:woc/data/dummy_data.dart';

class CoctailDetailScreen extends StatelessWidget {
  static const routeName = '/coctail-detail';
  const CoctailDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final coctailId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedCoctail =
        dummyCoctails.firstWhere((coctail) => coctail.id == coctailId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCoctail.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.network(
                selectedCoctail.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: const Text(
                'Ingredients',
                style: TextStyle(
                  fontFamily: 'Alegreya',
                  fontSize: 27,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              height: 180,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ListView.builder(
                itemBuilder: (context, index) => Card(
                  color: const Color.fromARGB(255, 223, 223, 223),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      selectedCoctail.ingredients[index],
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                itemCount: selectedCoctail.ingredients.length,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: const Text(
                'How to make:',
                style: TextStyle(
                  fontFamily: 'Alegreya',
                  fontSize: 27,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              height: 240,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ListView.builder(
                itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          '# ${index + 1}',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      title: Text(
                        selectedCoctail.steps[index],
                        style: const TextStyle(
                          fontFamily: 'Phudu',
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.6,
                      color: Colors.black54,
                    ),
                  ],
                ),
                itemCount: selectedCoctail.steps.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(
          Icons.delete,
        ),
      ),
    );
  }
}
