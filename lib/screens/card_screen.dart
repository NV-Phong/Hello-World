import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Credit card ui"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // _getWhiteCard(false),
            const SizedBox(
              height: 20,
            ),
            _getWhiteCard(true)
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _getWhiteCard(bool isGrey) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: isGrey ? Color(0xFF292929) : Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 4,
                offset: Offset(0, 1))
          ]),
      width: MediaQuery.of(context).size.width * .9,
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Image.asset("assets/images/card_logo.png", height: 30),
              Text(
                "Trust Bank",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Roboto",
                    color: Color(0xFF707070)),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "1234",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Roboto",
                    color: Color(0xFF707070)),
              ),
              Text(
                "1234",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Roboto",
                    color: Color(0xFF707070)),
              ),
              Text(
                "1234",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Roboto",
                    color: Color(0xFF707070)),
              ),
              Text(
                "1234",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Roboto",
                    color: Color(0xFF707070)),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
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
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "DEVELOPER REYAZ",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Roboto",
                    color: Color(0xFF707070)),
              ),
              Text(
                "02/2022",
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
