import 'package:flutter/material.dart';
import 'package:woc/model/coctail.dart';
import 'package:woc/screens/coctail_detail_screen.dart';

class CoctailItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String alcoholContent;
  final Complexity complexity;

  const CoctailItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.alcoholContent,
      required this.complexity,
      required this.id});

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'Simple';

      case Complexity.challenging:
        return 'Challenging';

      case Complexity.hard:
        return 'Hard';
    }
  }

  void selectCoctail(BuildContext context) {
    Navigator.of(context).pushNamed(
      CoctailDetailScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCoctail(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 240,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 10,
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    color: const Color.fromARGB(137, 0, 0, 0),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        alcoholContent,
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Phudu',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(
                        Icons.percent_sharp,
                        size: 22,
                        weight: 22,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        complexityText,
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Phudu',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(
                        Icons.unfold_more_double,
                        size: 22,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
