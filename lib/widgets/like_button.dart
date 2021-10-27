import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({
    Key? key,
    this.size,
  }) : super(key: key);
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        color: Colors.white,
      ),
      child: Icon(
        Icons.favorite,
        color: Colors.red,
        size: size ?? 14.0,
      ),
    );
  }
}
