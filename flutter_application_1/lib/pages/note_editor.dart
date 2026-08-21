import 'package:flutter/material.dart';

class TextEditor extends StatefulWidget {
  final String? noteId;
TextEditor({super.key, required this.noteId});

  @override
  State<TextEditor> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  
    @override
    Widget build(BuildContext context) {

        return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text('Simple Notes',
       textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),

      ),
      actions: [
        Icon(Icons.logout_rounded)
      ],
        ),


        body: Column(
            children: [
                
            ],
        )
        );
    }
}