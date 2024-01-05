import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final Widget? leading;
  final Function? onTap;
  final bool selected;
  final Color? selectedColor;
  final Color? selectedTileColor;

  const CustomListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.trailing,
    this.leading,
    this.onTap,
    this.selected = false,
    this.selectedColor,
    this.selectedTileColor,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDarkTheme =
        Theme.of(context).brightness == Brightness.dark ? true : false;
    return ListTile(
      onTap: onTap != null ? () => onTap!() : null,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      leading: leading,
      selected: selected,
      selectedColor: isDarkTheme
          ? Theme.of(context).primaryColor
          : Theme.of(context).secondaryHeaderColor,
      selectedTileColor: isDarkTheme
          ? Theme.of(context).primaryColorLight
          : Theme.of(context).primaryColor,
    );
  }
}
