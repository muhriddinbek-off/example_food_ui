import 'package:example_food_ui/tools/image.dart';

class PizzaModel {
  final String img;
  PizzaModel({
    required this.img,
  });
}

List<PizzaModel> pizzas = [
  PizzaModel(img: AppImage.pizza1),
  PizzaModel(img: AppImage.pizza2),
  PizzaModel(img: AppImage.pizza3),
  PizzaModel(img: AppImage.pizza4),
];
