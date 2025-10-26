import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.keyboardType,
    this.focusNode,
    this.obscureText = false,
    this.autofillHints,
    this.validator,
    this.controller,
    this.formatter,
    this.onFieldSubmitted,
    this.onSuffixTap,
    required this.showSuffixIcon,
    this.suffix,
    this.borderColor = const Color(0xFF2D2D5F),
    this.minLines = 1,
    this.maxLines = 1,
    this.expands = false,
    this.textAlignVertical,
    this.contentPadding,
    this.onChanged,
    this.maxLength,
    this.isRequired = false,
    this.readOnly = false,
    this.enabled = true,
    this.prefixIcon,
    this.initialValue,
    this.errorText,
    this.textInputAction, this.autovalidateMode,
  });
  final String label;
  final String hintText;
  final String? errorText;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final bool obscureText;
  final Iterable<String>? autofillHints;
  final Function(String)? validator;
  final TextEditingController? controller;
  final List<TextInputFormatter>? formatter;
  final Function(String)? onFieldSubmitted;
  final Function()? onSuffixTap;
  final bool showSuffixIcon;
  final Widget? suffix;
  final Color borderColor;
  final int minLines;
  final int maxLines;
  final int? maxLength;
  final bool expands;
  final bool isRequired;
  final TextAlignVertical? textAlignVertical;
  final EdgeInsetsGeometry? contentPadding;
  final Function(String)? onChanged;
  final bool readOnly;
  final bool enabled;
  final Widget? prefixIcon;
  final String? initialValue;
  final TextInputAction? textInputAction;
  final AutovalidateMode? autovalidateMode;
  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final typography = context.theme.appTypography;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 6,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: label,
                style: typography.titleMedium,
              ),
              if (isRequired)
                TextSpan(
                  text: ' *',
                  style: typography.titleMedium.copyWith(
                    color: colors.secondary,
                  ),
                ),
            ],
          ),
        ),
        TextFormField(
          cursorColor: colors.white,
          readOnly: readOnly,
          autovalidateMode: autovalidateMode,
          enabled: enabled,
          initialValue: initialValue,
          decoration: InputDecoration(
            suffixIcon: showSuffixIcon ? suffix : null,
            prefixIcon: prefixIcon,
            contentPadding:
                contentPadding ??
                EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(12),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colors.primary),
              borderRadius: BorderRadius.circular(12),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colors.error),
              borderRadius: BorderRadius.circular(12),
            ),
            floatingLabelBehavior: maxLines > 1
                ? FloatingLabelBehavior.always
                : FloatingLabelBehavior.auto,
            alignLabelWithHint: false,
            // label: AutoSizeText(
            // label,
            // style: GoogleFonts.raleway(color: Color(0xFF888888)),
            // ),
            hintText: hintText,
            errorText: errorText,
            hintStyle: TextStyle(color: colors.textSecondary, fontSize: 12),
            errorStyle: TextStyle(color: colors.error, fontSize: 12),
          ),
          style: TextStyle(color: colors.white, fontSize: 14),
          keyboardType: keyboardType,
          focusNode: focusNode,
          obscureText: obscureText,
          // obscuringCharacter: "*",
          onChanged: onChanged,
          autofillHints: autofillHints,
          inputFormatters: formatter,
          controller: controller,
          minLines: expands ? null : minLines,
          maxLines: expands ? null : maxLines,
          maxLength: maxLength,
          expands: expands,
          textAlignVertical: textAlignVertical,
          textInputAction: textInputAction,
          onTapOutside: (event) {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          validator: (value) => validator != null ? validator!(value!) : null,
          onFieldSubmitted: onFieldSubmitted,
          buildCounter: maxLength != null
              ? (
                  BuildContext context, {
                  required int currentLength,
                  required bool isFocused,
                  required int? maxLength,
                }) {
                  return Text(
                    '$currentLength/$maxLength',
                    style: TextStyle(
                      color: const Color(0xFFB0B0B0),
                      fontSize: 12,
                    ),
                  );
                }
              : null,
        ),
      ],
    );
  }
}
