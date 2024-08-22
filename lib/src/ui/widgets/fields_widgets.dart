import 'package:catbreeds/src/core/styles/app_colors.dart';
import 'package:catbreeds/src/core/styles/app_theme.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {

  const SearchTextField({
    required this.textController,
    required this.padding,
    super.key,
    this.label,
    this.hintText,
    this.onTap,
    this.validator,
    this.onChange, 
    this.onTapSufix, 
    this.isViewSufix,
  });

  final Function(String)? onChange;
  final String? Function(String?)?  validator;
  final Function()?  onTap;

  final TextEditingController? textController;
  final EdgeInsets padding;
  final String? label;
  final String? hintText;
  final VoidCallback? onTapSufix;
  final bool? isViewSufix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        controller: textController,
        autocorrect: false,
        onTap: onTap,
        onChanged: onChange,
        validator: validator,
        cursorColor: AppColors.brownPrimary,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(right: 2),
            child: Icon(
              Icons.search,
              size: 20,
              color: AppColors.brownPrimary,
            ),              
          ),              
          labelStyle: AppTheme.defaultTheme().textTheme.bodyLarge!,
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            gapPadding: 0,
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            gapPadding: 0,
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText ?? '',
          errorStyle: AppTheme.defaultTheme().textTheme.bodySmall!.copyWith(
            color: AppColors.redError,
          ),
        ),
        style: AppTheme.defaultTheme().textTheme.bodyMedium!,
      ),
    );
  }
}