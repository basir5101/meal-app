import 'package:flutter/material.dart';


class UpdateMonth extends StatefulWidget {
  const UpdateMonth({Key? key}) : super(key: key);

  @override
  _AddMonthState createState() => _AddMonthState();
}

class _AddMonthState extends State<UpdateMonth> {
  String title = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Your First Month'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) => {
                  title = value
                },
                textAlign: TextAlign.center,
              ),
              ElevatedButton(onPressed: () {

              }, child: Text('Submit'))
            ],
          ),
        ));
  }
}
