import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDatePicker {
  static DateTime? selectedDate;
  static Future showDatePickerDialog(context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          actions: [
            SizedBox(
              height: 150,
              width: 500,
              child: CupertinoTheme(
                data: const CupertinoThemeData(
                  textTheme: CupertinoTextThemeData(
                    dateTimePickerTextStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: CupertinoDatePicker(
                  dateOrder: DatePickerDateOrder.dmy,
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime.now(),
                  onDateTimeChanged: (DateTime newDateTime) {
                    selectedDate = newDateTime;
                  },
                ),
              ),
            ),
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                if (selectedDate != null) {
                  log(selectedDate.toString());
                }
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
