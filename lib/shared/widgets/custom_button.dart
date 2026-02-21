import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;
  final ButtonStyle? style;
  const CustomButton({
    super.key,
    required this.child,
    this.onPressed,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed?.call,
      style:
          style ??
          ButtonStyle(
            backgroundColor: WidgetStateProperty.all(AppColors.backgroundColor),
          ),
      child: child,
    );
  }
}
