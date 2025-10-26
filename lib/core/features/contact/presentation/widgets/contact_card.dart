import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/app_text_field.dart';
import 'package:portfolio_pavan/core/utils/gradient_button.dart';

import '../../../../theme/dimens.dart';

class ContactCard extends StatefulWidget {
  const ContactCard({super.key});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();
  final _firstNameFocusNode = FocusNode();
  final _lastNameFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _messageFocusNode = FocusNode();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  String? _validateEmail(String? value) {
    const pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    final regex = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!regex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? _validateNotEmpty(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    _firstNameFocusNode.dispose();
    _lastNameFocusNode.dispose();
    _emailFocusNode.dispose();
    _messageFocusNode.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
    } else {
      setState(() {
        _autovalidateMode = AutovalidateMode.always;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final typography = context.theme.appTypography;
    final gradient = context.theme.appGradients;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colors.surfaceDark.withValues(alpha: .7),
        border: Border.all(color: colors.border),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.extraLargePadding+10,
        vertical: Dimens.extraLargePadding+10,
      ),
      child: Column(
        spacing: Dimens.largePadding,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "📝 Send Me a Message",
            style: typography.headlineMedium.copyWith(
              color: colors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Fill out the form below and I'll get back to you as soon as possible!",
            style: typography.titleMedium.copyWith(color: colors.textSecondary),
          ),
          Form(
            key: _formKey,
            child: Column(
              spacing: Dimens.extraLargePadding,
              children: [
                Row(
                  spacing: Dimens.base,
                  children: [
                    Expanded(
                      child: AppTextField(
                        label: "First Name",
                        hintText: "Enter first name",
                        showSuffixIcon: false,
                        isRequired: true,
                        controller: _firstNameController,
                        focusNode: _firstNameFocusNode,
                        autovalidateMode: _autovalidateMode,
                        validator: (value) =>
                            _validateNotEmpty(value, "First Name"),
                        keyboardType: TextInputType.name,
                        autofillHints: const [AutofillHints.givenName],
                        onFieldSubmitted: (value) {
                          _lastNameFocusNode.requestFocus();
                        },
                      ),
                    ),
                    Expanded(
                      child: AppTextField(
                        label: "Last Name",
                        hintText: "Enter last name",
                        showSuffixIcon: false,
                        isRequired: true,
                        controller: _lastNameController,
                        focusNode: _lastNameFocusNode,
                        autovalidateMode: _autovalidateMode,
                        validator: (value) =>
                            _validateNotEmpty(value, "Last Name"),
                        autofillHints: const [AutofillHints.familyName],
                        keyboardType: TextInputType.name,
                        onFieldSubmitted: (value) {
                          _emailFocusNode.requestFocus();
                        },
                      ),
                    ),
                  ],
                ),
                AppTextField(
                  label: "Email",
                  hintText: "Enter email",
                  showSuffixIcon: false,
                  isRequired: true,
                  controller: _emailController,
                  focusNode: _emailFocusNode,
                  autovalidateMode: _autovalidateMode,
                  validator: _validateEmail,
                  autofillHints: const [AutofillHints.email],
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    _messageFocusNode.requestFocus();
                  },
                ),
                AppTextField(
                  label: "Project Details",
                  hintText: "Tell me about your project ...",
                  showSuffixIcon: false,
                  isRequired: true,
                  controller: _messageController,
                  focusNode: _messageFocusNode,
                  maxLines: 5,
                  autovalidateMode: _autovalidateMode,
                  validator: (value) =>
                      _validateNotEmpty(value, "Project Details"),
                  onFieldSubmitted: (value) => _submitForm(),
                ),
                GradientButton(
                  text: " Send Message 🚀",
                  gradient: gradient.purplePink,
                  onPressed: _submitForm,
                  borderRadius: 12,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: Dimens.largePadding),
                  textStyle: typography.labelLarge.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "🔒 Your information is secure and will never be shared with third parties.",
                  style: typography.labelMedium.copyWith(
                    color: colors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
