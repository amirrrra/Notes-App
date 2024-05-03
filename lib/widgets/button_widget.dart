import 'package:flutter/material.dart';
import 'package:notes_app/utils/constants.dart';

class ButtonWidget extends StatelessWidget {
  final void Function() onTap;
  final bool isLoading;
  const ButtonWidget({
    super.key,
    required this.onTap,
    this.isLoading = false,
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
        child: Center(
          child: isLoading
              ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                    color: black,strokeWidth: 3,
                  ),
              )
              : const Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 20,
                    color: black,
                    fontWeight: FontWeight.w700
                  ),
                ),
        ),
      ),
    );
  }
}
