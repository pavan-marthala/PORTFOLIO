import 'package:flutter/widgets.dart';

class GradientContainer extends StatelessWidget {
  final LinearGradient gradient;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;
  final Border? border;

  const GradientContainer({
    super.key,
    required this.gradient,
    this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.width,
    this.height,
    this.alignment,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
        border: border,
      ),
      child: child,
    );
  }
}