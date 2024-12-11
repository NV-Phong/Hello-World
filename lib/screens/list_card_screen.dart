import 'package:flutter/material.dart';

class ListCardScreen extends StatefulWidget {
  const ListCardScreen({super.key});

  @override
  State<ListCardScreen> createState() => _ListCardScreenState();
}

class _ListCardScreenState extends State<ListCardScreen> {
  final List<Map<String, String>> employees = [
    {'name': 'Nguyễn Văn Phong', 'id': '001', 'SDT': '0337614610'},
    {'name': 'Nguyễn Thành Nhân', 'id': '002', 'SDT': '0337614610'},
    {'name': 'Phạm Văn Phước', 'id': '003', 'SDT': '0337614610'},
  ];

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
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Tên: ${employee['name']}',
                            style: const TextStyle(fontSize: 16)),
                        Text('Mã số NV: ${employee['id']}',
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey)),
                        Text('SDT: ${employee['SDT']}',
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ListCardScreen(),
    );
  }
}
