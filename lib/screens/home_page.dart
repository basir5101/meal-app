import 'package:flutter/material.dart';
import 'package:meal/screens/add_names.dart';

import 'add_month.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Meal'),
        centerTitle: true,
      ),
      body: Center(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UpdateName(),
                      ));
                },
                child: Text(
                  'Get Started',
                  style: Theme.of(context).textTheme.button,
                )),
          ),
        ),
      ),
    );
  }
}
