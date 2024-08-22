import 'package:flutter/material.dart';

class WrapCloseKeyboard extends StatelessWidget {
  
  const WrapCloseKeyboard({
    super.key, 
    required this.child,
  });
  
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    return SizedBox(
      height: heightSize,
      child: GestureDetector(
        onTap: () {
          if(!(MediaQuery.of(context).viewInsets.bottom == 0.0)){
            FocusScope.of(context).requestFocus( FocusNode());
          }
        }, 
        child: child,  
      ),
    );
  }
}
