import 'package:bekam/core/utils/values.dart';
import 'package:flutter/material.dart';

///SelectionPopupModel is common model
///used for setting data into dropdowns
class SelectionPopupModel {
  int? id;
  String title;
  dynamic value;
  bool isSelected;

  SelectionPopupModel({
    this.id,
    required this.title,
    this.value,
    this.isSelected = false,
  });
}

///The [CustomDropDown] is a custom dropdown widget that provides a styled dropdown button with additional customization options.
///
/// This widget allows you to customize various aspects of the dropdown, including its width, alignment, icons, styles, and more.
class CustomDropDown extends StatelessWidget {
  /// Creates aThe [CustomDropDown] widget.
  ///
  /// The[alignment] specifies the alignment of the dropdown.
  /// The [width] defines the width of the dropdown.
  /// The [focusNode] allows you to specify a [FocusNode] to control the focus behavior.
  /// The[icon] is an optional icon to display next to the dropdown button.
  /// The [autofocus] determines whether the dropdown should automatically focus.
  /// The [textStyle] defines the text style of the selected item.
  /// The [items] is a list of [SelectionPopupModel] representing the dropdown items.
  /// The [hintText is the hint text to display when no item is selected.
  /// The [hintStyle] defines the text style of the hint text.
  /// The [prefix] is an optional widget to be displayed as a prefix.
  /// The [prefixConstraints] allows you to specify constraints for the prefix widget.
  /// The [suffix] is an optional widget to be displayed as a suffix.
  /// The [suffixConstraints] allows you to specify constraints for the suffix widget.
  /// The [contentPadding] defines the padding of the dropdown.
  /// The [validator] is a form field validator for the selected item.
  /// The [onChanged] is a callback function called when the selected item changes.
   const CustomDropDown({
    Key? key,
    this.alignment,
    this.width,
    this.focusNode,
    this.icon,
    this.autofocus = true,
    this.textStyle,
    this.items,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.validator,
    this.onChanged,
  }) : super(
          key: key,
        );

  
  /// The alignment of the dropdown. If null, it will be centered.
  final Alignment? alignment;

  /// The width of the dropdown. If null, it takes the maximum available width.
  final double? width;

  /// The focus node to control the focus behavior of the dropdown.
  final FocusNode? focusNode;

  /// An optional icon to display next to the dropdown button.
  final Widget? icon;

  /// Determines whether the dropdown should automatically focus.
  final bool? autofocus;

  /// The text style of the selected item.
  final TextStyle? textStyle;

  /// A list of [SelectionPopupModel] representing the dropdown items.
  final List<SelectionPopupModel>? items;

  /// The hint text to display when no item is selected.
  final String? hintText;

  /// The text style of the hint text.
  final TextStyle? hintStyle;

  /// An optional widget to be displayed as a prefix.
  final Widget? prefix;

  /// Constraints for the prefix widget.
  final BoxConstraints? prefixConstraints;

  /// An optional widget to be displayed as a suffix.
  final Widget? suffix;

  /// Constraints for the suffix widget.
  final BoxConstraints? suffixConstraints;

  /// The padding of the dropdown.
  final EdgeInsets? contentPadding;

  /// Form field validator for the selected item.
  final FormFieldValidator<SelectionPopupModel>? validator;

  /// Callback function called when the selected item changes.
  final Function(SelectionPopupModel)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: dropDownWidget,
          )
        : dropDownWidget;
  }

  Widget get dropDownWidget => SizedBox(
        width: width ?? double.maxFinite,
        child: DropdownButtonFormField<SelectionPopupModel>(
          focusNode: focusNode ?? FocusNode(),
          icon: icon,
          autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.bodyMedium_1,
          items: items?.map((SelectionPopupModel item) {
            return DropdownMenuItem<SelectionPopupModel>(
              value: item,
              child: Text(
                item.title,
                overflow: TextOverflow.ellipsis,
                style: hintStyle ?? CustomTextStyles.bodyMedium_1,
              ),
            );
          }).toList(),
          decoration: decoration,
          validator: validator,
          onChanged: (value) {
            onChanged!(value!);
          },
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.bodyMedium_1,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding,
        border: InputBorder.none,
      );
}
