import 'package:flutter/material.dart';
import 'package:catbreeds/src/core/styles/app_spaces.dart';


class ContainerButtomWrap extends StatelessWidget {
  const ContainerButtomWrap({
    required this.child,
    super.key, 
    this.margin,
  });

  final Widget child;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
  return Container(
      margin: margin,
      alignment: Alignment.topLeft,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppSpaces.r40)),
      ),
      child: child,
    );
  }
}