import 'package:flutter/material.dart';
import 'package:random_number_generator/component/number_row.dart';
import 'package:random_number_generator/constant/colors.dart';
import 'package:random_number_generator/screen/home_screen.dart';

class SettingsScreen extends StatefulWidget {
  final int maxNumber;

  const SettingsScreen({Key? key, required this.maxNumber}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double maxNumber = 1000;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    maxNumber = widget.maxNumber.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PRIMARY_COLOR,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                _Body(maxNumber: maxNumber),
                _Footer(onSliderChanged: onSliderChanged,
                  maxNumber: maxNumber,
                  onButtonPressed: onButtonPressed)
              ],
            ),
          ),
        ));
  }

  void onButtonPressed () {
    Navigator.of(context).pop(maxNumber.toInt());
  }


  void onSliderChanged(double val) {
    setState(() {
      maxNumber = val;
    });
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
    required this.maxNumber,
  }) : super(key: key);

  final double maxNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NumberRow(number: maxNumber.toInt(),)
    );
  }
}

class _Footer extends StatelessWidget {
  final ValueChanged<double>? onSliderChanged;
  final double maxNumber;
  final VoidCallback onButtonPressed;

  const _Footer({
    Key? key,
    required this.onSliderChanged,
    required this.maxNumber,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: maxNumber,
          min: 1000,
          max: 100000,
          onChanged: onSliderChanged,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: RED_COLOR,
            ),
            onPressed: onButtonPressed,
            child: Text('!'),
          ),
        )
      ],
    );
  }
}
