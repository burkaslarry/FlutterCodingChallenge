import 'package:flutter/material.dart';
import 'bottom_sheet_content.dart';

class MyHomePage extends StatelessWidget {
  static const label = "Click Me";
  static const buttonColor = Colors.blue;

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              isScrollControlled: true,
              useSafeArea: true,
              builder: (BuildContext context) {
                return const BottomSheetContent(
                  buttonLabel: label,
                  buttonColor: buttonColor,
                );
              },
            );
          },
          child: const Text(label),
        ),
      ),
    );
  }
}
