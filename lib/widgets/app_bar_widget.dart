import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/utils/constants.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      leading: IconButton(
        // padding:EdgeInsets.only(left: 15),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          CupertinoIcons.arrow_left,
        ),
      ),
      title: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.check,
        ),
      ),
      titleSpacing: screenWidth - 110,
      backgroundColor: black,
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(
      kToolbarHeight,
    );
  }
}
