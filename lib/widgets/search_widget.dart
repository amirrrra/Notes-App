import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    
    return Container(
      height: screenWidth / 7.5,
      decoration: const BoxDecoration(
        color: grey24,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: TextField(
        style: TextStyle(
          fontSize: screenWidth / 20,
        ),
        decoration: InputDecoration(
          hintText: 'Search notes',
          hintStyle: TextStyle(
            // fontFamily: 'Gilroy-Regular',
            color: grey8,
            fontSize: screenWidth / 22,
          ),
          icon: Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 20,
            ),
            child: Icon(
              Icons.search,
              color: grey8,
              size: screenWidth / 15,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
