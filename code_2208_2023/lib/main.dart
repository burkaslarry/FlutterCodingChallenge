import 'package:flutter/material.dart';
import 'draggablebottomsheet.dart';

void main() {
  runApp(MyApp());
}

bool showDrag = false;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Draggable Scroll Bar Demo'),
        ),
        //DraggableScrollbar builds Stack with provided Scrollable List of Grid
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  static const label = "Click Me";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Handle button click, show Model Bottom SHeet
                showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Padding(
                        padding: EdgeInsets.all(16.0), // Add padding of 16dp
                        child: DraggableScrollableSheet(
                          maxChildSize: 0.8,
                          expand: false,
                          builder: (_, ScrollController scrollController) {
                            return Column(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                    controller: scrollController,
                                    itemCount: 250,
                                    itemBuilder: (_, index) {
                                      return ListTile(
                                        title: Text("Item: $index"),
                                      );
                                    },
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Handle button press
                                    // exit bottom scroll
                                    Navigator.pop(context);
                                  },
                                  child: Text('Bottom Button'),
                                ),
                              ],
                            );
                          },
                        ));
                  },
                );
              },
              child: Text(label),
            ),
          ),
        ],
      ),
    );
  }
}
