import 'package:flutter/material.dart';
import 'package:meal/provider/meal_provider.dart';
import 'package:provider/provider.dart';

class AddMonth extends StatefulWidget {
  const AddMonth({Key? key}) : super(key: key);

  @override
  _AddMonthState createState() => _AddMonthState();
}

class _AddMonthState extends State<AddMonth> {
  final TextEditingController _controller = TextEditingController();

  String title="";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Add Your First Month'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              onChanged: (val){
                setState(() {
                  title = val;
                });
              },
              decoration: const InputDecoration(hintText: 'Enter Title'),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<MealProvider>(context, listen: false).saveMealMonth(title);
              },
              child: const Text('Create Data'),
            ),
            Text(title)
          ],
        )
    );
  }
}
