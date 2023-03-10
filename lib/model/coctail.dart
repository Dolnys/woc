enum Complexity {
  simple,
  challenging,
  hard,
}

enum FlavourProfile {
  sweet,
  sour,
  dry,
}

enum Power {
  strong,
  medium,
  gentle,
}

class Coctail {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final String alcoholContent;
  final Complexity complexity;
  final FlavourProfile flavourProfile;
  final Power power;

  const Coctail({
    required this.id,
    required this.categories,
    required this.imageUrl,
    required this.ingredients,
    required this.title,
    required this.steps,
    required this.alcoholContent,
    required this.complexity,
    required this.power,
    required this.flavourProfile,
  });
}
