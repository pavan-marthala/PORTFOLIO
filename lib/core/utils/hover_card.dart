import 'package:flutter/material.dart';

/// Adds hover animation for cards
class HoverCard extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  final MouseCursor cursor;
  const HoverCard({super.key, required this.builder,this.cursor = SystemMouseCursors.basic});

  @override
  State<HoverCard> createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: widget.cursor,
      child: widget.builder(isHovered),
    );
  }
}