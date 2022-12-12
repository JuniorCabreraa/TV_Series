import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tv_series_app/core/constants/colors.dart';

class FirstPinScreen extends StatefulWidget {
  const FirstPinScreen({super.key});

  @override
  State<FirstPinScreen> createState() => _FirstPinScreenState();
}

class _FirstPinScreenState extends State<FirstPinScreen> {
  final TextEditingController _pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SET PIN"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 84),
            const Text(
              "ENTER YOUR PIN CODE",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: PinCodeTextField(
                controller: _pinController,
                appContext: context,
                length: 4,
                onChanged: (String value) {},
                onCompleted: (String value) {},
                keyboardType: TextInputType.number,
                autoFocus: true,
                obscureText: true,
                blinkWhenObscuring: true,
                blinkDuration: const Duration(milliseconds: 500),
                textStyle: const TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
                animationType: AnimationType.scale,
                animationDuration: const Duration(milliseconds: 200),
                enableActiveFill: true,
                useHapticFeedback: true,
                pinTheme: PinTheme(
                    fieldHeight: 96,
                    fieldWidth: 72,
                    borderWidth: 2,
                    shape: PinCodeFieldShape.box,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    inactiveColor: AppColors.main,
                    inactiveFillColor: AppColors.pinfieldBg,
                    activeColor: AppColors.main,
                    activeFillColor: AppColors.main,
                    selectedFillColor: AppColors.appBarBg),
              ),
            ),
            const SizedBox(height: 80),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: AppColors.main),
                  child: const Text(
                    "SAVE PIN",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}