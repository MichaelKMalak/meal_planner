import 'package:flutter/material.dart';
import 'package:meal_planner/data/models/meal_model.dart';

@immutable
class DayWithMealsModel {
  final DateTime day;
  final List<MealModel> meals;

  const DayWithMealsModel({
    required this.day,
    required this.meals,
  });

  DayWithMealsModel copyWith({
    DateTime? day,
    List<MealModel>? meals,
  }) {
    return DayWithMealsModel(
      day: day ?? this.day,
      meals: meals ?? this.meals,
    );
  }
}
