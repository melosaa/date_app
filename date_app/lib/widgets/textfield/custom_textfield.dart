import 'package:date_app/utilities/constants/color_constants.dart';
import 'package:date_app/utilities/constants/text/size_constants.dart';
import 'package:date_app/utilities/constants/text/text_style_constants.dart';
import 'package:date_app/utilities/core/theme/app_radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final bool obscureText;
  final bool isPhone;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onEditingComplete;
  final VoidCallback? onSubmitAction;
  final int? minLines;
  final int? maxLines;
  final SvgPicture? prefixIcon;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;

  const CustomTextField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.validator,
    this.obscureText = false,
    this.isPhone = false,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.onEditingComplete,
    this.onSubmitAction,
    this.minLines,
    this.maxLines,
    this.prefixIcon,
    this.textInputAction,
    this.onFieldSubmitted,
    this.focusNode,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = false;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          _isFocused = hasFocus;
        });
      },
      child: TextFormField(
        controller: widget.controller,
        focusNode: widget.focusNode,
        obscureText: _obscureText,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        textInputAction:
            widget.textInputAction ??
            (widget.onSubmitAction != null
                ? TextInputAction.done
                : TextInputAction.next),
        onEditingComplete: widget.onSubmitAction ?? widget.onEditingComplete,
        onFieldSubmitted: widget.onFieldSubmitted,
        onTapOutside: (_) => FocusScope.of(context).unfocus(),
        minLines: widget.minLines,
        maxLines: widget.maxLines ?? (widget.obscureText ? 1 : null),
        style: TextStyles.textField,
        validator: widget.validator,
        decoration: InputDecoration(
          hintText: widget.hintText ?? widget.labelText,
          hintStyle: TextStyles.hint,
          filled: false,
          contentPadding: EdgeInsets.symmetric(
            vertical: 16.h,
            horizontal: 14.w,
          ),
          isDense: true,

          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.grey700, width: 1.5.w),
          ),
        ),
      ),
    );
  }
}
