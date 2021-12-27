import 'package:flutter/material.dart';
import 'package:meal/model/meal_model.dart';
import 'package:meal/provider/meal_provider.dart';
import 'package:provider/provider.dart';

class UpdateName extends StatefulWidget {
  const UpdateName({Key? key}) : super(key: key);

  @override
  _UpdateNameState createState() => _UpdateNameState();
}

class _UpdateNameState extends State<UpdateName> {
   List <Map<String , String>> names = [
     {"name": ""}
  ];

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    names;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update Name')),
      body: Column(
        children: [
          Column(
            children: names.map((item) => TextField(
              onChanged: (val) {
                print(item["name"]);
                setState(() {
                  item["name"] = val;
                });
              },
              decoration: const InputDecoration(hintText: 'Enter name'),
            ),).toList(),
          ),
          ElevatedButton(onPressed: () {
            setState(() {
              names.add(
                {
                  "name" : ""
                }
              );
            });
          }, child: Text('add more')),
          ElevatedButton(onPressed: () {
            print(names);
          }, child: Text('Submit')),
        ],
      ),
    );
  }
}
