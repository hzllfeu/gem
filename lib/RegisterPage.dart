import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:gem/Card.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController controller = TextEditingController();
  String initialCountry = 'US';
  PhoneNumber number = PhoneNumber(isoCode: 'US');
  FocusNode fc = FocusNode();

  @override
  void dispose(){
    fc.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) =>FocusScope.of(context).requestFocus(fc));
    Timer(const Duration(milliseconds: 1), ()
    {
      fc.requestFocus();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'We need your ',
                        style: TextStyle(
                          fontSize: 34,
                          color: Colors.black87,
                          fontFamily: "SfPro",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'phone',
                        style: TextStyle(
                          fontSize: 34,
                          color: Colors.deepOrange,
                          fontFamily: "SfPro",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'number',
                        style: TextStyle(
                          fontSize: 34,
                          color: Colors.deepOrange,
                          fontFamily: "SfPro",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  InternationalPhoneNumberInput(
                    focusNode: fc,
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                    },
                    onInputValidated: (bool value) {
                      print(value);
                    },
                    selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      useBottomSheetSafeArea: true,
                    ),
                    ignoreBlank: false,
                    autoFocus: true,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: TextStyle(color: Colors.black),
                    initialValue: number,
                    textFieldController: controller,
                    formatInput: true,
                    keyboardType:
                    const TextInputType.numberWithOptions(signed: true, decimal: true),
                    inputBorder: OutlineInputBorder(),
                    onSaved: (PhoneNumber number) {
                      print('On Saved: $number');
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      fc.requestFocus();
                    },

                    child: Text('Save'),
                  ),
                ],
              )
          ),
        )
    );
  }

  void getPhoneNumber(String s) {}
}
