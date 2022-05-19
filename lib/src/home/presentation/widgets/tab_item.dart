part of 'tab_screen_selector.dart';

class TabItem extends StatelessWidget {
  final String _title;
  const TabItem({
    Key? key,
    required String title,
  })  : _title = title,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Center(
        child: Text(
          _title,
          style: CapybaSocialTextStyle.bodyText1.weightBold.style,
        ),
      ),
    );
  }
}
