import 'package:flutter/material.dart';

import 'package:sofa_store/widgets/custom_container.dart';
import 'package:sofa_store/widgets/like_button.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    required this.imagePath,
    required this.likeButton,
  }) : super(key: key);
  final String imagePath;
  final bool likeButton;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: 130.0,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if(likeButton)Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              LikeButton(),
            ],
          ),
          const SizedBox(height: 7.0),
          Expanded(child: Image.asset(imagePath)),
        ],
      ),
    );
  }
}
