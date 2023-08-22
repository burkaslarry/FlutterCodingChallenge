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
                  useSafeArea: true, // iPhone M top
                  builder: (BuildContext context) {
                    return Padding(
                        padding: EdgeInsets.only(
                          left: 16.0,
                          top: 16.0,
                          right: 16.0,
                          bottom:
                              MediaQuery.of(context).viewInsets.bottom + 16.0,
                        ),
                        child: DraggableScrollableSheet(
                          maxChildSize: 0.8,
                          expand: false,
                          builder: (_, ScrollController scrollController) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter the Text',
                                  ),
                                ),
                                SizedBox(height: 16.0),
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
