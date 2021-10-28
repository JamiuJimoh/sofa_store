import 'package:flutter/material.dart';

import '../text_style_constants.dart';
import 'custom_container.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        children: [
          GestureDetector(
            child: const Icon(Icons.remove, size: 20.0),
            onTap: () {
              setState(() {
                if (count > 0) count--;
              });
            },
          ),
          const SizedBox(width: 10.0),
          Text('$count', style: title),
          const SizedBox(width: 10.0),
          GestureDetector(
            child: const Icon(Icons.add, size: 20.0),
            onTap: () {
              setState(() {
                count++;
              });
            },
          ),
        ],
      ),
    );
  }
}
