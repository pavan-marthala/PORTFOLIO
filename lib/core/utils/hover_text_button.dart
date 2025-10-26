import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';

/// Custom hoverable text button with arrow animation and no extra padding
class HoverTextButton extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  final Color color;
  final Color? hoverColor;

  const HoverTextButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.color,
    this.hoverColor,
  });

  @override
  State<HoverTextButton> createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<HoverTextButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final typography = context.theme.appTypography;
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedSlide(
          duration: const Duration(milliseconds: 200),
          offset: isHovered ? const Offset(0.1, 0) : Offset.zero,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 200),
                style: typography.titleMedium.copyWith(
                  color: isHovered ? colors.secondary : widget.color,
                  fontWeight: FontWeight.w600,
                ),
                child: Text(widget.label),
              ),
              const SizedBox(width: 6),
              Icon(
                Icons.arrow_forward,
                color: isHovered ? colors.secondary : widget.color,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
