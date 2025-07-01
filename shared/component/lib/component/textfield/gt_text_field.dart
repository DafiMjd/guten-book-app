import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../component.dart';

class GtTextField extends StatelessWidget {
  const GtTextField({super.key, required this.hint, this.onChanged});

  final String hint;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: hint, border: _defaultBorder()),
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
      onChanged: onChanged,
    );
  }

  InputBorder _defaultBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: color ?? GtAppTheme.greyColorShade1,
        width: 1.5.w,
      ),
    );
  }
}
