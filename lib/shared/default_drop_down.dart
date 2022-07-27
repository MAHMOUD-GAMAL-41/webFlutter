import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DefaultDropDownButton extends StatefulWidget {
  final String text;
  final String validateText;
  final List<String> items;
  const DefaultDropDownButton({
    required this.text,
    required this.validateText,
    required this.items,
    Key? key,
  }) : super(key: key);

  @override
  State<DefaultDropDownButton> createState() => _DefaultDropDownButtonState();
}

class _DefaultDropDownButtonState extends State<DefaultDropDownButton> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.all(10),
      elevation: 4,
      child: DropdownButtonFormField2(
        decoration: const InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
          isDense: true,
          contentPadding: EdgeInsets.zero,
        ),
        isExpanded: true,
        hint: Text(
          widget.text,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Colors.black45,
        ),
        iconSize: 30,
        buttonHeight: 60,
        buttonPadding: const EdgeInsets.only(left: 20, right: 10),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        items: widget.items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ))
            .toList(),
        validator: (value) {
          if (value == null) {
            return widget.validateText;
          }
          return null;
        },
        onChanged: (value) {
          //Do something when changing the item if you want.
        },
        onSaved: (value) {
          selectedValue = value.toString();
        },
      ),
    );
  }
}
