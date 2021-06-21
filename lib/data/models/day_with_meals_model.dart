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
}
