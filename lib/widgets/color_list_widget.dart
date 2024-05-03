import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/utils/constants.dart';
import 'package:notes_app/widgets/color_widget.dart';

class ColorListWidget extends StatefulWidget {
  const ColorListWidget({
    super.key,
  });

  @override
  State<ColorListWidget> createState() => _ColorListWidgetState();
}

class _ColorListWidgetState extends State<ColorListWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return ColorWidget(
            color: colorsList[index],
            isActive: currentIndex == index,
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = colorsList[index];
              setState(() {});
            },
          );
        },
      ),
    );
  }
}
