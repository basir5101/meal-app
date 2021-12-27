import 'package:flutter/cupertino.dart';
import 'package:meal/model/meal_model.dart';
import 'package:meal/repo/meals_api.dart';

class MealProvider with ChangeNotifier{
  ApiClient apiClient = ApiClient();
  MealModel _mealModel = MealModel.demo();
  MealModel get mealModel => _mealModel;
  late num startingMonthId;



  saveMealMonth (String title) async {
    _mealModel = await apiClient.saveMealMonth(title);
    startingMonthId = _mealModel.id;
    notifyListeners();
  }

}