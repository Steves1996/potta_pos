class Category{
  final String name;
  bool isSelected;

  Category({required this.name, this.isSelected = false});
}

final List<Category> categories = [
  Category(name: "Petit-déjeuner"),
  Category(name: "Déjeuner"),
  Category(name: "Dîner"),
  Category(name: "Snacks"),
  Category(name: "Desserts"),
  Category(name: "Soupes & Salades"),
  Category(name: "Plats principaux"),
  Category(name: "Boissons"),
  Category(name: "Vegan & Végétarien"),
  Category(name: "Street Food"),
];