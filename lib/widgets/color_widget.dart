import 'package:flutter/material.dart';
import 'package:notes_app/utils/constants.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({
    super.key,
    required this.color,
    required this.isActive,
    this.onTap,
  });

  final Color color;
  final bool isActive;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 6,
        ),
        child: isActive
            ? CircleAvatar(
                radius: 40,
                backgroundColor: white,
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: color,
                ),
              )
            : CircleAvatar(
                radius: 40,
                backgroundColor: color,
              ),
      ),
    );
  }
}
