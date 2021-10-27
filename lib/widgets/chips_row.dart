import 'package:flutter/material.dart';
import 'package:sofa_store/text_style_constants.dart';

class ChipsRow extends StatelessWidget {
  const ChipsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Chip(
          label: Text('All', style: chipSelected),
          backgroundColor: kOnPrimary,
        ),
        Chip(
          label: Text('Chair', style: chipUnselected),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        Chip(
          label: Text('Table', style: chipUnselected),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        Chip(
          label: Text('Lamp', style: chipUnselected),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        Chip(
          label: Text('Floor', style: chipUnselected),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
      ],
    );
  }
}
