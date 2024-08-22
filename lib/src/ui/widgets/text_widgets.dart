import 'package:flutter/material.dart';
import 'package:catbreeds/src/core/styles/app_theme.dart';
import 'package:catbreeds/src/core/styles/app_colors.dart';

///PAGE
class TitlePrimary extends StatelessWidget {

  const TitlePrimary({
    super.key, 
    required this.text, 
    this.style, 
    this.textAlign = TextAlign.center,
    this.isBold = false,
    this.color = AppColors.brownPrimary,
  });

  final String text;
  final TextStyle? style; 
  final TextAlign textAlign;
   final bool isBold;  
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? AppTheme.defaultTheme().textTheme.titleLarge!.copyWith( 
        color: color,
        fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
        height: 1,
      ),  
      textAlign: textAlign,
    );
  }
}
class SubtitlePrimary extends StatelessWidget {

  const SubtitlePrimary({
    super.key, 
    required this.text, 
    this.style, 
    this.textAlign = TextAlign.center,
    this.isBold = false,
    this.color = AppColors.brownPrimary, 
    this.maxLines,
    this.letterSpacing = 0,
  });

  final String text;
  final TextStyle? style; 
  final int? maxLines;
  final TextAlign textAlign;
  final bool isBold;  
  final Color color;
  final double letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? AppTheme.defaultTheme().textTheme.bodyLarge!.copyWith( 
        color: color,
        fontWeight: isBold ? FontWeight.bold : FontWeight.w400,
        letterSpacing:  letterSpacing,
        height: 1.2,
      ), 
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

///BUTTOM

class TextButtom extends StatelessWidget {

  const TextButtom({
    super.key, 
    required this.text, 
    this.onTap, 
    this.style, 
    this.textAlign = TextAlign.center,  
    this.color = Colors.white,
  });

  final String text;
  final Function()? onTap;
  final TextStyle? style; 
  final TextAlign textAlign;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Center(
        child: Text(
          text,
          style: style ?? AppTheme.buttomStyle().textTheme.titleLarge!.copyWith( 
            color: color,
            fontWeight: FontWeight.bold,
          ),
          textAlign: textAlign, 
        ),
      ),
    );
  }
}

///TEXT
class TextBasic extends StatelessWidget {

  const TextBasic({
    super.key, 
    required this.text, 
    this.style, 
    this.maxLines,
    this.isBold = false,
    this.color = Colors.black,
    this.textAlign = TextAlign.center,
  });

  final String text;
  final TextStyle? style; 
  final TextAlign textAlign;  
  final bool isBold;  
  final int? maxLines;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? AppTheme.defaultTheme().textTheme.bodyMedium!.copyWith( 
        color: color,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),     
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
class TextSmall extends StatelessWidget {

  const TextSmall({
    super.key, 
    required this.text, 
    this.style, 
    this.maxLines,
    this.isBold = false,
    this.color = Colors.black,
    this.textAlign = TextAlign.center,
  });

  final String text;
  final TextStyle? style; 
  final TextAlign textAlign;
  final int? maxLines;
  final bool isBold;  
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? AppTheme.defaultTheme().textTheme.bodySmall!.copyWith( 
        color: color,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}

