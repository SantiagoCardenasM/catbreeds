import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {

  const BackgroundImage({
    required this.pathImageBackground,
    super.key, 
    this.borderRadius = 12,
    this.fit = BoxFit.cover,
  });

  final String pathImageBackground;
  final BoxFit fit;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {    
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        pathImageBackground,      
        fit: fit,
        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
          return const Center(
            child: Text('Error loading image'),
          );
        },
      ),
    );
  }
}
