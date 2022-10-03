import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_note_app_by_smttnbl/screens/home_screen.dart';
import 'package:flutter_note_app_by_smttnbl/style/app_style.dart';

class NoteReader extends StatefulWidget {
  NoteReader({required this.doc, Key? key}) : super(key: key);

  QueryDocumentSnapshot doc;

  @override
  State<NoteReader> createState() => _NoteReaderState();
}

class _NoteReaderState extends State<NoteReader> {
  @override
  Widget build(BuildContext context) {
    int color_id = widget.doc['color_id'];
    return Scaffold(
      backgroundColor: AppStyle.cardColor[color_id],
      appBar: AppBar(
        backgroundColor: AppStyle.cardColor[color_id],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.doc['note_title'],
              style: AppStyle.mainTitle,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              widget.doc['note_content'],
              style: AppStyle.mainContent,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.doc['creation_date'],
              style: AppStyle.dateTitle,
            ),
          ],
        ),
      ),
    );
  }
}
