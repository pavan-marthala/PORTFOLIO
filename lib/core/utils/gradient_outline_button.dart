import 'package:flutter/material.dart';

class GradientOutlineButton extends StatelessWidget {
  final String text;
  final LinearGradient outlineGradient;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  final double borderRadius;
  final double borderWidth;
  final Widget? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final bool showShadow;

  const GradientOutlineButton({
    super.key,
    required this.text,
    required this.outlineGradient,
    this.onPressed,
    this.padding,
    this.textStyle,
    this.width,
    this.height,
    this.borderRadius = 50.0,
    this.borderWidth = 2.0,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.showShadow = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: outlineGradient,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: showShadow
            ? [
                BoxShadow(
                  color: outlineGradient.colors.first.withValues(alpha:0.3),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                ),
              ]
            : null,
      ),
      child: Container(
        margin: EdgeInsets.all(borderWidth),
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius - borderWidth),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(borderRadius - borderWidth),
            child: Padding(
              padding:
                  padding ??
                  const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[icon!, const SizedBox(width: 8)],
                  Text(
                    text,
                    style:
                        textStyle ??
                        TextStyle(
                          color: textColor ?? Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GradientOutlineButtonPaint extends StatelessWidget {
  final String text;
  final LinearGradient gradient;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final double? width;
  final double borderRadius;
  final double borderWidth;
  final Widget? icon;
  final Color? backgroundColor;

  const GradientOutlineButtonPaint({
    super.key,
    required this.text,
    required this.gradient,
    this.onPressed,
    this.padding,
    this.textStyle,
    this.width,
    this.borderRadius = 50.0,
    this.borderWidth = 2.0,
    this.icon,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _GradientBorderPainter(
        gradient: gradient,
        borderWidth: borderWidth,
        borderRadius: borderRadius,
      ),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(borderRadius),
            child: Padding(
              padding:
                  padding ??
                  const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[icon!, const SizedBox(width: 8)],
                  ShaderMask(
                    shaderCallback: (bounds) => gradient.createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                    child: Text(
                      text,
                      style:
                          textStyle?.copyWith(color: Colors.white) ??
                          const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GradientBorderPainter extends CustomPainter {
  final LinearGradient gradient;
  final double borderWidth;
  final double borderRadius;

  _GradientBorderPainter({
    required this.gradient,
    required this.borderWidth,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(borderRadius));

    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Animated gradient outline button with hover effect
class AnimatedGradientOutlineButton extends StatefulWidget {
  final String text;
  final LinearGradient gradient;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final double? width;
  final double borderRadius;
  final double borderWidth;
  final Widget? icon;
  final Color? backgroundColor;

  const AnimatedGradientOutlineButton({
    super.key,
    required this.text,
    required this.gradient,
    this.onPressed,
    this.padding,
    this.textStyle,
    this.width,
    this.borderRadius = 50.0,
    this.borderWidth = 2.0,
    this.icon,
    this.backgroundColor,
  });

  @override
  State<AnimatedGradientOutlineButton> createState() =>
      _AnimatedGradientOutlineButtonState();
}

class _AnimatedGradientOutlineButtonState
    extends State<AnimatedGradientOutlineButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    setState(() => _isPressed = true);
    _controller.forward();
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() => _isPressed = false);
    _controller.reverse();
    widget.onPressed?.call();
  }

  void _handleTapCancel() {
    setState(() => _isPressed = false);
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: widget.width,
          decoration: BoxDecoration(
            gradient: widget.gradient,
            borderRadius: BorderRadius.circular(widget.borderRadius),
            boxShadow: _isPressed
                ? [
                    BoxShadow(
                      color: widget.gradient.colors.first.withValues(alpha:0.5),
                      blurRadius: 20,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : [
                    BoxShadow(
                      color: widget.gradient.colors.first.withValues(alpha:0.3),
                      blurRadius: 15,
                      offset: const Offset(0, 8),
                    ),
                  ],
          ),
          child: Container(
            margin: EdgeInsets.all(widget.borderWidth),
            decoration: BoxDecoration(
              color: widget.backgroundColor ?? Colors.transparent,
              borderRadius: BorderRadius.circular(
                widget.borderRadius - widget.borderWidth,
              ),
            ),
            child: Padding(
              padding:
                  widget.padding ??
                  const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.icon != null) ...[
                    widget.icon!,
                    const SizedBox(width: 8),
                  ],
                  ShaderMask(
                    shaderCallback: (bounds) => widget.gradient.createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                    child: Text(
                      widget.text,
                      style:
                          widget.textStyle?.copyWith(color: Colors.white) ??
                          const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
