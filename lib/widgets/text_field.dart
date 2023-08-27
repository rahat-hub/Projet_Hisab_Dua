import 'package:flutter/material.dart';
import 'package:project_dua/shared/constant_color.dart';
import 'package:project_dua/shared/constant_size.dart';
import 'package:responsive_builder/responsive_builder.dart';

abstract class TextFieldConstant {
  static textFieldWidgets(
      {FormFieldState<dynamic>? field,
      controller,
      maxLines,
      maxCharacter,
      item,
      counterText = true,
      titleEnable = false,
      title,
      onTap,
      onChange,
      onPressed,
      onEditingComplete,
      onPressedPlus,
      onPressedMinimized,
      onPressClear,
      borderColor = false,
      //keyboardType = const Keyboard.number,
      inputFormatters,
      showSuffixIcon = false,
      isPassword = false,
      setIcon,
      onPressIcon,
      hintText = "",
      obscureTextShow = false,
      obscureTextShowFunc,
      helperText}) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: titleEnable != false
                ? Text(title, textAlign: TextAlign.start, style: TextStyle(fontSize: Theme.of(context).textTheme.displayMedium!.fontSize! - 3))
                : const SizedBox(),
          ),
          TextField(
            controller: controller,
            cursorColor: Colors.black,
            maxLength: maxCharacter,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize! + 10,
            ),
            //keyboardType: keyboardType,
            onChanged: (String? value) {
              if (value != "") {
                field!.didChange(value);
              } else {
                field!.reset();
              }
              onChange(value);
            },
            //onTap: () => onTap(),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              helperText: helperText,
              counterText: counterText != true ? "" : null,
              contentPadding: const EdgeInsets.all(5),
              helperStyle: TextStyle(color: ColorConstants.GREY, fontSize: Theme.of(context).textTheme.bodySmall!.fontSize! - 5),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: borderColor != true ? ColorConstants.BLACK : ColorConstants.RED),
                  borderRadius: BorderRadius.circular(SizeConstant.TEXTBOXRADIUS)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: borderColor != true ? ColorConstants.BLACK : ColorConstants.RED),
                  borderRadius: BorderRadius.circular(SizeConstant.TEXTBOXRADIUS)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: borderColor != true ? ColorConstants.BLACK : ColorConstants.RED),
                  borderRadius: BorderRadius.circular(SizeConstant.TEXTBOXRADIUS)),
              errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: ColorConstants.RED), borderRadius: BorderRadius.circular(SizeConstant.TEXTBOXRADIUS)),
              errorText: field?.errorText,
              hintText: hintText,
              hintStyle: TextStyle(color: ColorConstants.GREY, fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize! + 10),
              suffixIcon: showSuffixIcon
                  ? isPassword
                      ? IconButton(
                          splashRadius: 1,
                          onPressed: () => obscureTextShowFunc(),
                          icon: Icon(
                            obscureTextShow ? Icons.visibility : Icons.visibility_off,
                            color: ColorConstants.BLACK.withOpacity(0.5),
                          ))
                      : IconButton(
                          splashRadius: 1,
                          onPressed: () => onPressIcon(),
                          icon: Icon(
                            setIcon,
                            color: ColorConstants.BLACK.withOpacity(0.5),
                          ))
                  : null,
            ),
            obscureText: obscureTextShow,
          ),
        ],
      );
    });
  }
}
