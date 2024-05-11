import 'package:dekhlo/utils/size/global_size/global_size.dart';
import 'package:flutter/material.dart';

class Buttons {
  static Padding longButton(
      {required Color color,
      required BuildContext context,
      required VoidCallback onPressedCallback,
      required String buttonText,
      required Color textColor}) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: GlobalSizes.getDeviceWidth(context) * 0.05,
          vertical: GlobalSizes.getDeviceHeight(context) * 0.01),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressedCallback,
          style: ElevatedButton.styleFrom(
            side: const BorderSide(
              color: Color(0xffFC8019),
              width: 0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            backgroundColor: color,
            padding: EdgeInsets.all(GlobalSizes.getDeviceWidth(context) * 0.04),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 18.0,
              color: textColor, // Text color
            ),
          ),
        ),
      ),
    );
  }
static Padding shortButton(
  {required Color color,
  required BuildContext context,
  required VoidCallback onPressedCallback,
  required String buttonText,
  required Color textColor}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: GlobalSizes.getDeviceWidth(context) * 0.02,
        vertical: GlobalSizes.getDeviceHeight(context) * 0.01,
      ),
      child: SizedBox(
        width: GlobalSizes.getDeviceWidth(context) * 0.3, // Adjust width as needed
        height: GlobalSizes.getDeviceHeight(context) * 0.06, // Adjust height as needed
        child: ElevatedButton(
          onPressed: onPressedCallback,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            backgroundColor: color,
          
            padding: EdgeInsets.all(GlobalSizes.getDeviceWidth(context) * 0.04),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 16.0, // Adjust font size as needed
              color: textColor, // Text color
            ),
          ),
        ),
      ),
    );
  }


}
