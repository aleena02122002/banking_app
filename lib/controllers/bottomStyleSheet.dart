import 'package:flutter/material.dart';

class BottomSheets extends StatefulWidget {
  final Widget child;
  const BottomSheets({super.key, required this.child});

  @override
  State<BottomSheets> createState() => _BottomSheetsState();
}

class _BottomSheetsState extends State<BottomSheets> {

  final sheet = GlobalKey();
  final controller = DraggableScrollableController();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints){
      return DraggableScrollableSheet(
          builder: (BuildContext context, ScrollController scrollController){
            return DecoratedBox(decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow,
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 1),
                )
              ],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(22),topRight: Radius.circular(22))
            ));
          }
      );
    });
  }
}
