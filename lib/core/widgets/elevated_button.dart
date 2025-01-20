import 'package:flutter/material.dart';

import 'package:breedit/core/util/app_colors.dart';

class CElevatedButton extends StatelessWidget {
  const CElevatedButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.child,
  });

  final Function()? onPressed;
  final Color backgroundColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: white,
        backgroundColor: backgroundColor,
        shadowColor: Colors.transparent,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: child,
    );
  }
}
