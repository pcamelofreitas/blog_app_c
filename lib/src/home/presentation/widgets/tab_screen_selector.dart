import 'package:blog_app/src/shared/design_system/tokens/color_tokens.dart';
import 'package:blog_app/src/shared/presentation/typography/capyba_social_text_style.dart';
import 'package:flutter/material.dart';

part 'tab_item.dart';

class TabScreenSelector extends StatelessWidget {
  final TabController _tabController;
  final Function(int) _onTabPressed;
  final List<Widget> _tabs;

  const TabScreenSelector({
    Key? key,
    required TabController tabController,
    required Function(int) onTabPressed,
    required List<Widget> tabs,
  })  : _tabController = tabController,
        _onTabPressed = onTabPressed,
        _tabs = tabs,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: _onTabPressed,
      physics: const ClampingScrollPhysics(),
      controller: _tabController,
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorTokens.primary,
            width: 2.0,
          ),
        ),
      ),
      labelColor: ColorTokens.neutralDarkest,
      labelStyle: CapybaSocialTextStyle.bodyText1.weightBold.style,
      unselectedLabelColor: ColorTokens.neutral,
      tabs: _tabs,
    );
  }
}
