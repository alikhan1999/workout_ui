import 'package:flutter/material.dart';
import 'package:azz_medical_web/constant/style.dart';
import 'package:azz_medical_web/constant/text_style/text_style.dart';
import 'package:azz_medical_web/ui/base/base_widget.dart';

class AppBarLogoWidget extends BaseStateLessWidget implements PreferredSizeWidget {
  final bool? automaticallyImplyLeading;
  final double appBarHeight;
  final Widget title;
  final Widget? leading;
  final bool? centerTitle;
  final bool sameHeight;
  final List<Widget>? actions;

  AppBarLogoWidget(
      {Key? key,
      this.sameHeight = true,
      this.appBarHeight = kToolbarHeight,
      this.automaticallyImplyLeading,
      required this.title,
      this.leading,
      this.centerTitle = true,
      this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Style.sectionBoxGradientDecoration( radius: 0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: centerTitle,
        toolbarHeight: sameHeight ? appBarHeight : null,
        automaticallyImplyLeading: automaticallyImplyLeading ?? false,
        leading: leading,
        actions: actions,
        title: title,
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(color: Style.scaffoldBackground, fontFamily: 'Raleway'),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}

class AppBarWidget extends BaseStateLessWidget implements PreferredSizeWidget {
  final bool? automaticallyImplyLeading;
  final double appBarHeight;
  final double? leadingWidth;
  final String title;
  final Widget? leading;
  final Widget? titleWidget;
  final bool sameHeight;
  final Color? itemColor;
  final List<Widget>? actions;

  AppBarWidget(
      {Key? key,
      this.appBarHeight = kToolbarHeight,
      this.automaticallyImplyLeading,
      required this.title,
      this.leadingWidth,
      this.titleWidget,
      this.leading,
      this.itemColor,
      this.actions,
      this.sameHeight = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: itemColor,
      elevation: 0,

      centerTitle: true,
      toolbarHeight: sameHeight ? appBarHeight : null,
      automaticallyImplyLeading: automaticallyImplyLeading ?? false,
      leading: leading,
      leadingWidth: leadingWidth,
      actions: actions,
      title: titleWidget ??
          Text(
            title,
            style: headingTextStyle.copyWith(color: Style.black),
          ),
      titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
