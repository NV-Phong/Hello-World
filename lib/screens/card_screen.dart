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
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: isGrey ? const Color(0xFF292929) : Colors.white,
          image: const DecorationImage(
            image: AssetImage(
                // 'assets/Group 1524 (3).png'), // Đường dẫn tới hình ảnh
                'assets/Group 1524 (5).png'), // Đường dẫn tới hình ảnh
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 4,
                offset: const Offset(0, 1))
          ]),
      width: 380,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/logo.png', // Đường dẫn đến hình ảnh trong assets
                    width: 24, // Đặt kích thước cho hình ảnh nếu cần
                    height: 24,
                  ),
                  const SizedBox(width: 8), // Khoảng cách giữa hình ảnh và text
                  const Text(
                    "AGRIBANK",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Roboto",
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
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
            mainAxisAlignment:
                MainAxisAlignment.center, // Căn giữa theo chiều ngang
            children: [
              Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Căn giữa theo chiều dọc
                children: [
                  Text(
                    "VALID",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Roboto",
                      color: Color(0xFFF5F5F5),
                    ),
                  ),
                  Text(
                    "THRU",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Roboto",
                      color: Color(0xFFF5F5F5),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 8), // Thêm khoảng cách giữa "THRU" và "MM/YY"
              Text(
                "MM/YY",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Roboto",
                  color: Color.fromARGB(255, 48, 48, 48),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text(
              //   "VALID THRU",
              //   style: TextStyle(
              //       fontSize: 12,
              //       fontFamily: "Roboto",
              //       color: Color(0xFF707070)),
              // ),
              Text(
                "${employee['name']}",
                style: const TextStyle(
                    fontSize: 18,
                    fontFamily: "Roboto",
                    color: Color(0xFF707070)),
              ),
              // const Text(
              //   "03/2024",
              //   style: TextStyle(
              //       fontSize: 18,
              //       fontFamily: "Roboto",
              //       color: Color(0xFF707070)),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
