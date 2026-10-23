import 'package:flutter/material.dart';
import 'package:if_guia/core/theme/colors.dart';

class Button extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const Button({Key? key, required this.label, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: Key(label),
      onPressed: onPressed,
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(height: 40),
        child: Center(
          child: Text(
            label,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}