import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String selected_1 = "Select region";
  List<String> data_1 = ["Hanoi", "Ho Chi Minh City", "Da Nang"];

  Widget buildArea(BuildContext context) {
    return GestureDetector(
      onTap: () {
        TDPicker.showMultiPicker(
          context,
          title: 'Select region',
          onConfirm: (selected) {
            setState(() {
              selected_1 = '${data_1[selected[0]]}';
            });
            Navigator.of(context).pop();
          },
          data: [data_1],
        );
      },
      child: buildSelectRow(context, selected_1, 'Select region'),
    );
  }

  Widget buildSelectRow(BuildContext context, String value, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 16)),
        Text(value, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }

  Widget _passThroughStyle(BuildContext context) {
    return TDRadioGroup(
      selectId: 'index:0',
      passThrough: true,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          var title = 'Option'; // Changed from 'Lựa chọn' to 'Option'
          return TDRadio(
            id: 'index:$index',
            title: title,
            size: TDCheckBoxSize.large,
          );
        },
        itemCount: 4,
      ),
    );
  }

  Widget _verticalCardStyle(BuildContext context) {
    return TDRadioGroup(
      selectId: 'index:1',
      cardMode: true,
      direction: Axis.vertical,
      directionalTdRadios: const [
        TDRadio(
          id: 'index:0',
          title: 'Single Choice',
          titleMaxLine: 2,
          subTitleMaxLine: 2,
          subTitle: 'Description',
          cardMode: true,
        ),
        TDRadio(
          id: 'index:1',
          title: 'Single Choice',
          titleMaxLine: 2,
          subTitleMaxLine: 2,
          subTitle: 'Description',
          cardMode: true,
        ),
        TDRadio(
          id: 'index:2',
          title: 'Single Choice',
          titleMaxLine: 2,
          subTitleMaxLine: 2,
          subTitle: 'Description',
          cardMode: true,
        ),
        TDRadio(
          id: 'index:3',
          title: 'Single Choice',
          titleMaxLine: 2,
          subTitleMaxLine: 2,
          subTitle: 'Description',
          cardMode: true,
        ),
      ],
    );
  }

  // New method to add bottom tab bar
  Widget _textTypeTabBar(BuildContext context) {
    return TDBottomTabBar(TDBottomTabBarBasicType.text,
        useVerticalDivider: false,
        navigationTabs: [
          TDBottomTabBarTabConfig(
            tabText: 'Tab', // Thay '标签' bằng 'Tab'
            onTap: () {
              onTapTab(context, 'Tab 1');
            },
          ),
          TDBottomTabBarTabConfig(
            tabText: 'Tab', // Thay '标签' bằng 'Tab'
            onTap: () {
              onTapTab(context, 'Tab 1');
            },
          ),
        ]);
  }

  void onTapTab(BuildContext context, String label) {
    // Handle the tab tap action here
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Tapped on: $label')));
  }

  // New method to add a switch with text
  Widget _buildSwitchWithText(BuildContext context) {
    return _buildItem(
      context,
      const TDSwitch(isOn: true),
      title: 'Switch',
    );
  }

  // Helper method to build the item
  Widget _buildItem(BuildContext context, Widget child,
      {required String title}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 16)),
          child,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
            80.0), // Set AppBar height greater than default
        child: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 30.0), // Move title down
            child: Text('Test Screen'),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildArea(context),
            const SizedBox(height: 20),
            // _passThroughStyle(context),
            const SizedBox(height: 20),
            _verticalCardStyle(context),
            const SizedBox(height: 20),
            _textTypeTabBar(context), // Adding the bottom tab bar here
            const SizedBox(height: 20),
            _buildSwitchWithText(context), // Adding the switch with text here
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
