
import 'package:flutter/material.dart';

class MaterialTextField extends StatelessWidget {
  final String lable;
  final String hintText;
  final bool readOnly;
  MaterialTextField({required this.hintText,required this.lable,required this.controller,required this.readOnly});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 48,
      color: Colors.grey.shade300.withOpacity(0.4),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please fillup';
          }
          return null;
        },
        readOnly: readOnly,
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText:hintText,
          border: InputBorder.none,
          filled: true,
          fillColor: Color(0xFFF0F2F0),
        ),
      ),
    );
  }
}
