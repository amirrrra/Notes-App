import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/constants.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: grey24,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: Text(
              'Study',
              style: TextStyle(fontSize: screenWidth / 19),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Text(
                'I will study graphics subject within 3 hours from 7 to 10 pm',
                style: TextStyle(
                  color: grey8,
                  fontSize: screenWidth / 26,
                ),
              ),
            ),
            trailing: Icon(
              FontAwesomeIcons.trash,
              color: white,
              size: screenWidth / 18,
            ),
          ),
          Text(
            'May 21, 2024',
            style: TextStyle(
              color: grey8,
              fontSize: screenWidth / 26,
            ),
          ),
        ],
      ),
    );
  }
}
