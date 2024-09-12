// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:zaza_xp/services/toast.dart';

class TapableText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final String copyText;
  final String message;
  const TapableText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.textColor,
    required this.copyText,
    required this.message,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Material(
        color: Colors.transparent,
        child: Text(
          text,
          maxLines: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ),
      onTap: () async {
        await Clipboard.setData(ClipboardData(text: copyText));
        Toast(message);
      },
    );
  }
}
