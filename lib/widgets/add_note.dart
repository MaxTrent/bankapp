import 'package:bankapp_ui/themes/theme_colors.dart';
import 'package:bankapp_ui/themes/theme_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 191.0),
      child: Positioned(
        bottom: 50.0,
        left: 16.0,
        right: 16.0,
        child: Container(
          height: 45.0,
          width: 345.0,
          child: Center(
            child: Text(
              'Add a Note', style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),
            ),
          ),
          decoration: BoxDecoration(
            color: ThemeColors.lightGrey,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
