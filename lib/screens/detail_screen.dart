import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Map<String, String> employee;

  const DetailScreen({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết nhân viên - ${employee['id']}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tên: ${employee['name']}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Mã số NV: ${employee['id']}',
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text('SĐT: ${employee['SDT']}',
                style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
