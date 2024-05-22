import 'package:flutter/material.dart';

class CustomDropdownFormField extends StatelessWidget {
  final String? hintText;
  final List<String> items;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSaved;
  final Color? borderColor; // Made borderColor nullable

  const CustomDropdownFormField({
    super.key,
    this.hintText,
    required this.items,
    this.onChanged,
    this.onSaved,
    this.borderColor, // Made borderColor optional
  });

  @override
  Widget build(BuildContext context) {
    final defaultBorderColor =
        Theme.of(context).colorScheme.onSurface.withOpacity(0.38);
    final finalBorderColor = borderColor ??
        defaultBorderColor; // Use defaultBorderColor if borderColor is null

    return DropdownButtonFormField<String>(
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:
              BorderSide(color: finalBorderColor), // Use finalBorderColor here
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:
              BorderSide(color: finalBorderColor), // Use finalBorderColor here
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:
              BorderSide(color: finalBorderColor), // Use finalBorderColor here
        ),
        hintText: hintText,
      ),
      hint: Padding(
        padding: const EdgeInsets.only(left: 10),
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
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    item,
                    style: const TextStyle(fontSize: 14),
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
