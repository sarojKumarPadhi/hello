import 'package:flutter/material.dart';

class CustomDropdownFormField extends StatelessWidget {
  final String? hintText;
  final List<String> items;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSaved;

  const CustomDropdownFormField({
    Key? key,
    this.hintText,
    required this.items,
    this.onChanged,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey), // Custom border color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey), // Custom border color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey), // Custom border color
        ),
        hintText: hintText,
      ),
      hint: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          hintText ?? 'Select',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xffD8D8D8),
          ),
        ),
      ),
      items: items
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    item,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ))
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'Please select an item.';
        }
        return null;
      },
      onChanged: onChanged,
      onSaved: onSaved,
    );
  }
}
