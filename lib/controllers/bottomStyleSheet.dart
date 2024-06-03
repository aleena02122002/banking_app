import 'package:flutter/material.dart';

class BottomSheets extends StatefulWidget {
  final Widget child;
  const BottomSheets({Key? key, required this.child}) : super(key: key);

  @override
  State<BottomSheets> createState() => _BottomSheetsState();
}

class _BottomSheetsState extends State<BottomSheets> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(

        );
      },
      initialChildSize: 0.5, // The initial size of the sheet when created
      minChildSize: 0.25, // The minimum size of the sheet
      maxChildSize: 1.0, // The maximum size of the sheet
    );
  }
}
