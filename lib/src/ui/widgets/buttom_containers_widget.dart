import 'package:flutter/material.dart';
import 'package:catbreeds/src/core/styles/app_colors.dart';
import 'package:catbreeds/src/core/styles/app_spaces.dart';

class ButtomContainer extends StatelessWidget {

  const ButtomContainer({
    required this.child,
    required this.onClick,
    required this.colorButtom,
    super.key,
    this.margin,
    this.colorBorder,
    this.colorInActive, 
    this.interiorPadding,
    this.widthbuttom,
    this.heightbuttom,
    this.isActive = true,
  });

  final Widget child;
  final bool isActive;
  final Function()? onClick;
  final Color colorButtom;
  final EdgeInsets? margin;
  final Color? colorInActive;
  final Color? colorBorder;
  final EdgeInsets? interiorPadding;
  final double? widthbuttom;
  final double? heightbuttom;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: margin,
      child: Center(
        child: ElevatedButton(
          onPressed: (){
            if (onClick != null) onClick!();
          },                     
          style: ElevatedButton.styleFrom( 
            foregroundColor: Colors.white,
            backgroundColor: isActive
                ? colorButtom
                : colorInActive ?? AppColors.orangeBackground.withOpacity(0.65),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSpaces.r15),
              side: BorderSide(
                color: colorBorder != null
                  ? colorBorder!
                  : isActive 
                    ? colorButtom 
                    : colorInActive ?? AppColors.orangeBackground.withOpacity(0.2),
              ),
            ),
          ),      
          child: SizedBox(
            width: widthbuttom,
            height: heightbuttom,
            child: Padding(
              padding: interiorPadding?? 
              const EdgeInsets.symmetric(horizontal: AppSpaces.h25 , vertical: AppSpaces.h12),
              child: child,
            ),
          )
        ),
      ),
    );    
  }
}

