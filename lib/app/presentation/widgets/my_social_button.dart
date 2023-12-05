import 'package:flutter/material.dart';

class MySocialButton extends StatelessWidget {
  final Function() onTap;

  final String imagepPath;

  const MySocialButton({
    super.key,
    required this.onTap,
    required this.imagepPath,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                color: Colors.grey[200],
              ),
              child: Image.asset(
                imagepPath,
                height: 40,
              ),
          ),
        ),
      ),
    );
  }
}
