import 'package:flutter/material.dart';
import 'package:fletexx/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: const Color(0xffbd6a70),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: const Color(0xffbd6a70),
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
