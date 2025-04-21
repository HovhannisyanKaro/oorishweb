import 'package:flutter/material.dart';

import '../colors.dart';

abstract class InputThemes {
  static final outlineInputDecoration = InputDecoration(
    labelStyle: _labelStyle,
    border: OutlineInputBorder(borderSide: BorderSide(color: AppColors.charcoalGrey.withOpacity(0.5)), borderRadius: BorderRadius.circular(4)),
    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.charcoalGrey.withOpacity(0.5)), borderRadius: BorderRadius.circular(4)),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.charcoalGrey.withOpacity(0.5), width: 1), borderRadius: BorderRadius.circular(4)),
  );

  static const TextStyle _labelStyle = TextStyle(color: AppColors.charcoalGrey);
}
