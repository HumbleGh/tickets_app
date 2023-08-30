import 'package:flutter/material.dart';

class MyTabs extends StatefulWidget {
  const MyTabs({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  int _currentIndex = 0;

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Example'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => _changeTab(0),
                    child: Container(
                      decoration: BoxDecoration(
                        color:
                            _currentIndex == 0 ? Colors.grey : Colors.grey[700],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'First',
                          style: TextStyle(
                            color: _currentIndex == 0
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _changeTab(1),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _currentIndex == 1
                            ? Colors.white
                            : Colors.grey[700],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Second',
                          style: TextStyle(
                            color: _currentIndex == 1
                                ? Colors.black
                                : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: _currentIndex == 0
                ? const Center(
                    child: Text(
                      'Content for the First Tab',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  )
                : const Center(
                    child: Text(
                      'Content for the Second Tab',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
