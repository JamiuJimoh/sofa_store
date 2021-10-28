import 'package:flutter/material.dart';
import 'package:sofa_store/widgets/color_picker.dart';
import 'package:sofa_store/widgets/counter.dart';
import 'package:sofa_store/widgets/image_container.dart';

import 'sofa.dart';
import 'text_style_constants.dart';
import 'widgets/custom_container.dart';
import 'widgets/like_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.sofa,
  }) : super(key: key);
  final Sofa sofa;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 23.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomContainer(
                          borderRadius: 15.0,
                          child: GestureDetector(
                            onTap: Navigator.of(context).pop,
                            child: const Icon(Icons.chevron_left),
                          ),
                        ),
                        const LikeButton(size: 25.0),
                      ],
                    ),
                    Image.asset(
                      sofa.imagePath,
                      height: 250.0,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 40.0, bottom: 10.0, left: 30.0, right: 30.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(sofa.name, style: heading),
                            CustomContainer(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              border: Border.all(color: Colors.grey[300]!),
                              borderRadius: 50.0,
                              child: Row(
                                children: [
                                  const Icon(Icons.star, color: Colors.yellow),
                                  const SizedBox(width: 6.0),
                                  Text(sofa.rating, style: title),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5.0),
                        Row(
                          children: [
                            Text('by', style: subtitle1),
                            const SizedBox(width: 4.0),
                            Text(sofa.seller, style: subtitle2),
                          ],
                        ),
                        const SizedBox(height: 25.0),
                        Text(sofa.longDescription, style: descriptionStyle),
                        const SizedBox(height: 25.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 100.0,
                              width: 100.0,
                              child: ImageContainer(
                                imagePath: sofa.imagePath,
                                likeButton: false,
                              ),
                            ),
                            SizedBox(
                              height: 100.0,
                              width: 100.0,
                              child: ImageContainer(
                                imagePath: sofa.imagePath,
                                likeButton: false,
                              ),
                            ),
                            SizedBox(
                              height: 100.0,
                              width: 100.0,
                              child: ImageContainer(
                                imagePath: sofa.imagePath,
                                likeButton: false,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 19.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('Color',
                                    style: title.copyWith(fontSize: 17.0)),
                                const SizedBox(width: 15.0),
                                const ColorPicker(
                                  colors: [
                                    Colors.red,
                                    Colors.purple,
                                    Colors.pink
                                  ],
                                ),
                              ],
                            ),
                            const Counter(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const Divider(
                    height: 0.8,
                  ),
                  Expanded(
                    child: Container(
                      // height: 100.0,
                      padding: const EdgeInsets.all(30.0),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const SizedBox(height: 8.0),
                              Text('\$${sofa.price}.', style: heading),
                              Text(
                                '00',
                                style: title.copyWith(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Chip(
                            label: Text('Buy now', style: chipSelected),
                            labelPadding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
