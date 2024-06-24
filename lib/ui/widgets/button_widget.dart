import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget? child;
  final void Function()? onPressed;

  const AppButton({super.key, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
