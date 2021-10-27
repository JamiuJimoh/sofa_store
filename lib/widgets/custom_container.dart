import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    this.height,
    this.width,
    this.borderRadius,
    this.child,
    this.color,
    this.padding,
  }) : super(key: key);
  final double? height;
  final double? width;
  final double? borderRadius;
  final Widget? child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(10.0),
      height: height,
      width: width,
      child: child,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 21.0)),
        color: color ?? Colors.white,
      ),
    );
  }
}
