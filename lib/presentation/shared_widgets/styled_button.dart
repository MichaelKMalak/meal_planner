import 'package:flutter/material.dart';
import 'package:meal_planner/presentation/styles/styles.dart';

class StyledButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;

  const StyledButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: Corners.lgCircularBorder,
        ),
      ),
      child: child,
    );
  }
}
