import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({
    Key? key,
    this.size,
  }) : super(key: key);
  final double? size;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: size == null ? 16.0 : (size! / 12) * 10,
      child: Icon(
        Icons.favorite,
        color: Colors.red,
        size: size ?? 14.0,
      ),
    );
  }
}
