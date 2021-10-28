import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({
    Key? key,
    required this.colors,
  }) : super(key: key);
  final List<Color> colors;

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

const _radius = 13.0;

class _ColorPickerState extends State<ColorPicker> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var color in widget.colors)
          Row(
            children: [
              CircleAvatar(
                radius: _radius,
                backgroundColor: color,
              ),
              const SizedBox(width: 8.0),
            ],
          ),
      ],
    );
  }
}
