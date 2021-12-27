class MealModel {
  MealModel({
    required this.id,
    required this.title,
    required this.slug,
    required this.createdAt,
    required this.updatedAt,
    required this.names,
    required this.shoppings,
  });
  late final int id;
  late final String title;
  late final String slug;
  late final String createdAt;
  late final String updatedAt;
  late final List<Names> names;
  late final List<Shoppings> shoppings;
MealModel.demo();
  MealModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    names = List.from(json['names']).map((e)=>Names.fromJson(e)).toList();
    shoppings = List.from(json['shoppings']).map((e)=>Shoppings.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['slug'] = slug;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['names'] = names.map((e)=>e.toJson()).toList();
    _data['shoppings'] = shoppings.map((e)=>e.toJson()).toList();
    return _data;
  }
}


class Names {
  Names.demo({required String name});
  Names.copy();
  Names({
    required this.id,
    required this.name,
    required this.values,
    required this.deposits,
  });
  late final int id;
  late final String name;
  late final List<Values> values;
  late final List<Deposits> deposits;

  Names.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    values = List.from(json['values']).map((e)=>Values.fromJson(e)).toList();
    deposits = List.from(json['deposits']).map((e)=>Deposits.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['values'] = values.map((e)=>e.toJson()).toList();
    _data['deposits'] = deposits.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Values {
  Values({
    required this.id,
    required this.date,
    required this.meal,
  });
  late final int id;
  late final String date;
  late final double meal;

  Values.fromJson(Map<String, dynamic> json){
    id = json['id'];
    date = json['date'];
    meal = json['meal'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['date'] = date;
    _data['meal'] = meal;
    return _data;
  }
}

class Deposits {
  Deposits({
    required this.id,
    required this.date,
    required this.amount,
  });
  late final int id;
  late final String date;
  late final int amount;

  Deposits.fromJson(Map<String, dynamic> json){
    id = json['id'];
    date = json['date'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['date'] = date;
    _data['amount'] = amount;
    return _data;
  }
}

class Shoppings {
  Shoppings({
    required this.id,
    required this.date,
    required this.description,
    required this.cost,
  });
  late final int id;
  late final String date;
  late final String description;
  late final int cost;

  Shoppings.fromJson(Map<String, dynamic> json){
    id = json['id'];
    date = json['date'];
    description = json['description'];
    cost = json['cost'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['date'] = date;
    _data['description'] = description;
    _data['cost'] = cost;
    return _data;
  }
}