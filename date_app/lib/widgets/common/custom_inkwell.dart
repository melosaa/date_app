import 'package:flutter/material.dart';

class CustomInkWell extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;

  const CustomInkWell({
    super.key,
    required this.child,
    this.onTap,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      borderRadius: borderRadius,
      child: child,
    );
  }
}
