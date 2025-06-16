import 'package:flutter/material.dart';

class Contenedor extends StatelessWidget {
  final List<Widget> children;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? borderRadius;
  final BoxShadow? shadow;

  const Contenedor({
    super.key,
    required this.children,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.borderRadius,
    this.shadow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 24),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.8,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.blue[600],
        borderRadius: BorderRadius.circular(borderRadius ?? 25),
        boxShadow: shadow != null ? [shadow!] : null,
      ),
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ),
    );
  }
}