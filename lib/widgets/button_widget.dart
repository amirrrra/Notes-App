import 'package:flutter/material.dart';
import 'package:notes_app/utils/constants.dart';

class ButtonWidget extends StatelessWidget {
  final void Function() onTap;
  const ButtonWidget({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenWidth,
        height: 55,
        decoration: const BoxDecoration(
          color: cyan,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: const Center(
          child: Text(
            'Save',
            style: TextStyle(
              fontSize: 20,
              color: black,
            ),
          ),
        ),
      ),
    );
  }
}
