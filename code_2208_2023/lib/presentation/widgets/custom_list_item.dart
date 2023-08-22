import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final int index;

  const CustomListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("Item: $index"),
        ),
        const Divider(
          color: Colors.grey, // Add a grey line below the ListTile
          height: 1.0,
          thickness: 1.0,
        ),
      ],
    );
  }
}
