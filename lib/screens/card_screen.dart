import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  final Map<String, String> employee;

  // Accept employee data through the constructor
  const CardScreen({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Credit card UI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            _getWhiteCard(context, true),
          ],
        ),
      ),
    );
  }

  Widget _getWhiteCard(BuildContext context, bool isGrey) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: isGrey ? Color(0xFF292929) : Colors.white,
          image: const DecorationImage(
            image:
                AssetImage('assets/background.jpg'), // Đường dẫn tới hình ảnh
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 4,
                offset: Offset(0, 1))
          ]),
      width: 360,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trust Bank",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Roboto",
                    color: Color(0xFF707070)),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${employee['id']}", // Use employee['id'] here
                style: const TextStyle(
                    fontSize: 24,
                    fontFamily: "Roboto",
                    color: Color(0xFF707070)),
              ),
              // You can add more Text widgets for other parts of the card here if needed
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "CARD HOLDER",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Roboto",
                    color: Color(0xFF707070)),
              ),
              Text(
                "VALID THRU",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Roboto",
                    color: Color(0xFF707070)),
              ),
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${employee['name']}",
                style: const TextStyle(
                    fontSize: 18,
                    fontFamily: "Roboto",
                    color: Color(0xFF707070)),
              ),
              const Text(
                "03/2024",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Roboto",
                    color: Color(0xFF707070)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
