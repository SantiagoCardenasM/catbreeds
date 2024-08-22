import 'package:flutter/material.dart';

class ContainerBorderCircular extends StatelessWidget {
  
  const ContainerBorderCircular({
    super.key,
    required this.child,
    required this.radioCircular,
    required this.colorBackground,
    this.margin,
    this.width,
    this.border,
    this.height,
    this.isBoxShadow,
    this.interiorPadding, 
  });

  final EdgeInsets? interiorPadding;
  final EdgeInsets? margin;
  final Widget child;
  final Color colorBackground;
  final double radioCircular;
  final double? height;
  final double? width;
  final bool? isBoxShadow;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: interiorPadding ?? const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: colorBackground,          
          borderRadius: BorderRadius.circular(radioCircular),
          border: border,
          boxShadow: [
            BoxShadow(
              color:isBoxShadow == null || isBoxShadow! 
              ? const Color(0xFFD2DCD8) 
              : Colors.transparent,
              blurRadius: 2, 
              offset: const Offset(0, 3),
            ),
          ],
        ),
      child: child,
    );
  }
}