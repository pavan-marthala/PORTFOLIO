import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/app_text_field.dart';
import 'package:portfolio_pavan/core/utils/gradient_button.dart';
import 'package:portfolio_pavan/core/utils/sized_context.dart';

import '../../../../theme/dimens.dart';
import '../bloc/contact_us_cubit.dart';
import '../bloc/contact_us_state.dart';

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
      try {
        context.read<ContactUsCubit>().submitForm(
          _firstNameController.text.trim(),
          _lastNameController.text.trim(),
          _emailController.text.trim(),
          _messageController.text.trim(),
        );
      } catch (e) {
        log(e.toString());
      }
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
    final isMobile = context.widthPx < 600;

    return BlocConsumer<ContactUsCubit, ContactUsState>(
      listener: (context, state) {
        if (state.isSuccess) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Center(child: Text('Message sent successfully!')),
              backgroundColor: colors.success,
              elevation: 0,
              showCloseIcon: true,
              behavior: SnackBarBehavior.floating,
            ),
          );
          _formKey.currentState?.reset();
          _firstNameController.clear();
          _lastNameController.clear();
          _emailController.clear();
          _messageController.clear();
          context.read<ContactUsCubit>().reset();
          setState(() {
            _autovalidateMode = AutovalidateMode.disabled;
          });
        } else if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error: ${state.error}'),
              backgroundColor: colors.error,
              elevation: 0,
              showCloseIcon: true,
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
      },
      builder: (context, state) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: colors.surfaceDark.withValues(alpha: .7),
            border: Border.all(color: colors.border),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 22 : Dimens.extraLargePadding,
            vertical: isMobile ? 22 : Dimens.extraLargePadding,
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
                style: typography.titleMedium.copyWith(
                  color: colors.textSecondary,
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  spacing: isMobile
                      ? Dimens.mediumPadding
                      : Dimens.extraLargePadding,
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
                      text: state.isLoading
                          ? "Sending Message..."
                          : " Send Message 🚀",
                      icon: state.isLoading
                          ? CupertinoActivityIndicator(color: colors.white)
                          : null,
                      gradient: gradient.purplePink,
                      onPressed: _submitForm,
                      borderRadius: 12,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        vertical: Dimens.largePadding,
                      ),
                      textStyle: typography.labelLarge.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "🔒 Your information is secure and will never be shared with third parties.",
                      style: typography.labelMedium.copyWith(
                        color: colors.textSecondary,
                      ),
                      textAlign: TextAlign.center,
                    ),

                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
