import 'package:flutter/material.dart';
import 'package:woc/model/category.dart';
import 'package:woc/model/coctail.dart';

const dummyCategories = [
  Category(
    id: 'c1',
    title: 'Gin',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Vodka',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Whisky',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Rum',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Tequila',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Pisco',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Champagne',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Malibu',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Brandy',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Liqueurs',
    color: Colors.teal,
  ),
];

const dummyCoctails = [
  Coctail(
    id: 'm1',
    categories: [
      'c3',
    ],
    title: 'Whisky Sour',
    imageUrl:
        'https://cdn.katalogsmakow.pl/2019/04/22/0x600/whisky-sour.780968.jpg',
    ingredients: [
      '60ml Burbon Whisky',
      '30ml Lemon Juice',
      '15ml Rich sugar syrup',
      '3 dash Angostura Bitters',
      '1/2 shot Egg White',
    ],
    steps: [
      'Add bourbon, lemon juice, simple syrup and egg white, if using, to a shaker and dry-shake for 30 seconds without ice.',
      'Add ice and shake again until well-chilled.',
      'Strain into a rocks glass or a coupe.',
      'Garnish with 3 or 4 drops of Angostura bitters.',
    ],
    alcoholContent: '23',
    complexity: Complexity.simple,
  ),
  Coctail(
    id: 'm1',
    categories: [
      'c2',
      'c10',
    ],
    title: 'Espresso Martini',
    imageUrl:
        'https://images.immediate.co.uk/production/volatile/sites/30/2020/10/Ultimate-espresso-martini-260c465.jpg',
    ingredients: [
      '60ml Vodka',
      '30ml cofee liquor',
      '30ml espresso',
      '15ml simple syrup',
    ],
    steps: [
      'Add vodka, coffee liqueur, espresso and simple syrup to a shaker filled with ice and shake until well-chilled.',
      'Strain into a chilled cocktail glass.',
      'Garnish with 3 coffee beans.',
    ],
    alcoholContent: '19.5',
    complexity: Complexity.simple,
  ),
];
