import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final void Function()? onPressed;

  const AppBarWidget({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.arrow_left,
          ),
        ),
        SizedBox(
          width: screenWidth - 140,
        ),
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.check,
          ),
        ),
      ],
    );
  }
}
