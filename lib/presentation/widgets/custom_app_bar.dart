import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pikani/core/extensions/theme_extension.dart';
import 'package:pikani/core/utils/assets.dart';
import 'package:pikani/core/utils/constants.dart';
import 'package:pikani/core/utils/style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? subTitle;
  final List<Widget>? actions;
  final Function? callback;
  final Color? color;

  const CustomAppBar({
    super.key,
    this.title,
    this.subTitle,
    this.actions,
    this.callback,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: AppBar(
        titleSpacing: kScreenPadding,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        leading:
            context.canPop()
                ? IconButton(
                  onPressed: () {
                    context.pop();
                    if (callback != null) {
                      callback!();
                    }
                  },
                  icon: SvgPicture.asset(Assets.back),
                )
                : null,
        automaticallyImplyLeading: context.canPop(),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title == null
                ? const SizedBox.shrink()
                : Text(
                  title ?? "",
                  style: context.textTheme.headlineMedium?.copyWith(
                    color: context.colorTheme.primary,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 3,
                    shadows: [AppStyle.textShadow()],
                  ),
                ),
            subTitle == null
                ? const SizedBox.shrink()
                : Text(
                  subTitle ?? "",
                  style: context.textTheme.titleSmall?.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    color: context.colorTheme.onSurface,
                  ),
                ),
          ],
        ),
        actions:
            actions?.map((action) {
              return Align(alignment: Alignment.center, child: action);
            }).toList(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
