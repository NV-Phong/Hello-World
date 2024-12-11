import 'package:flutter/material.dart';
import 'card_screen.dart'; // Make sure to import CardScreen

class ListCardScreen extends StatefulWidget {
  const ListCardScreen({super.key});

  @override
  State<ListCardScreen> createState() => _ListCardScreenState();
}

class _ListCardScreenState extends State<ListCardScreen> {
  final List<Map<String, String>> employees = [
    {
      'name': 'Nguyễn Văn Phong',
      'id': '4353 2354 2353 2453',
      'other': 'DT : 03612731823',
      'image':
          'assets/The Girl [ 3 ].jpg' // Add an image field for each employee
    },
    {
      'name': 'Nguyễn Thành Nhân',
      'id': '4666 3534 3525 1356',
      'other': 'DT : 03612731823',
      'image':
          'assets/kevin-decatoire-helldivers-2-kevin-decatoire-05.jpg' // Add an image field
    },
    {
      'name': 'Phạm Văn Phước',
      'id': '1345 3355 2456 2345',
      'other': 'DT : 03612731823',
      'image': 'assets/wilbert-oosterom-sequence-01.png' // Add an image field
    },
  ];

  final Color cardBackgroundColor = Color(0xFFECD8C0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách nhân viên'),
      ),
      body: ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context, index) {
          final employee = employees[index];
          return GestureDetector(
            onTap: () {
              // Navigate to CardScreen and pass employee data
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      CardScreen(employee: employee), // Pass employee data
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1.0, 0.0); // Start from right
                    const end = Offset.zero; // End at current position
                    const curve = Curves.ease;

                    var tween = Tween(begin: begin, end: end)
                        .chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: cardBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // Image container
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(
                          employee['image']!, // Display employee image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tên: ${employee['name']}',
                              style: TextStyle(fontSize: 16)),
                          Text('Mã số NV: ${employee['id']}',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                          Text('${employee['other']}',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
