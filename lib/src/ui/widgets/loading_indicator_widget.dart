import 'package:flutter/material.dart';
import 'package:catbreeds/src/core/styles/app_colors.dart';

class LoadingIndicator extends StatelessWidget {

  const LoadingIndicator({
    super.key, 
    this.margin,
  });

  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: margin ?? const EdgeInsets.all(10),
        child: const CircularProgressIndicator(
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation(AppColors.orangeBackground),
        ),
      ),
    );
  }
}
