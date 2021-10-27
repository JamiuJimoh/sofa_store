import 'package:flutter/material.dart';

import '../text_style_constants.dart';
import 'custom_container.dart';
import 'image_container.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.name,
    required this.seller,
    required this.description,
    required this.price,
    required this.imagePath,
  }) : super(key: key);
  final String name;
  final String seller;
  final String description;
  final int price;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 190.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           ImageContainer(
            imagePath: imagePath,
          ),
          const SizedBox(width: 25.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8.0),
                    Text(name, style: title),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        Text('by', style: subtitle1),
                        const SizedBox(width: 4.0),
                        Text(seller, style: subtitle2),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Text(description,
                        style: descriptionStyle),
                    const SizedBox(height: 8.0),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(height: 8.0),
                        Text('\$$price.', style: title),
                        Text(
                          '00',
                          style: title.copyWith(
                              fontSize: 11.0, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Chip(
                      label: Text('Buy', style: chipSelected),
                      labelPadding:
                          const EdgeInsets.symmetric(horizontal: 14.0),
                      backgroundColor: kOnPrimary,
                    ),
                  ],
                ),
                const SizedBox(height: 7.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
