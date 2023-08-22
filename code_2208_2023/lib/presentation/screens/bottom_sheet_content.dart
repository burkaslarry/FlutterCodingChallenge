import 'package:flutter/material.dart';
import '../widgets/custom_list_item.dart';

class BottomSheetContent extends StatelessWidget {
  final String buttonLabel;
  final Color buttonColor;

  const BottomSheetContent({
    super.key,
    required this.buttonLabel,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        top: 16.0,
        right: 16.0,
        bottom: 16.0,
      ),
      child: DraggableScrollableSheet(
        maxChildSize: 0.8,
        expand: false,
        builder: (_, ScrollController scrollController) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter the Text',
                ),
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 250,
                  itemBuilder: (_, index) {
                    return CustomListItem(
                      index: index,
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(buttonLabel),
              ),
            ],
          );
        },
      ),
    );
  }
}
