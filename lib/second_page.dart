import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: IconButton(onPressed: () {
          Provider.of<CounterProvider>(context,listen: false).incrementCount();
        }, icon: Icon(Icons.add)),
      ),
    );
  }
}
