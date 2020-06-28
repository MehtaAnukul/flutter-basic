class FoodItem{
  final String title;
  final String category;

  FoodItem({
    this.title, this.category
});
}

List<FoodItem> loadFoodItem(){
  var foodItem = <FoodItem>[
    FoodItem(
      title: "Chocolate shake",
      category: "Milk",
    ),
    FoodItem(
      title: "Butter Chicken",
      category: "Milk",
    ),
    FoodItem(
      title: "Tandoori Chicken",
      category: "Milk",
    ),
    FoodItem(
      title: "Dal Makhani",
      category: "Milk",
    ),
    FoodItem(
      title: "Dhaba Dal",
      category: "Milk",
    ),
    FoodItem(
      title: "Machchli Amritsari",
      category: "Milk",
    ),
    FoodItem(
      title: "Chole Bhature",
      category: "Milk",
    ),
  ];
  return foodItem;
}
