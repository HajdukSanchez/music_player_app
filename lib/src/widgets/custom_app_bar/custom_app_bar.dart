import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Row(
          children: const [
            Icon(FontAwesomeIcons.chevronLeft),
            Spacer(),
            _AppBarIcon(iconData: FontAwesomeIcons.message),
            _AppBarIcon(iconData: FontAwesomeIcons.headphonesSimple),
            _AppBarIcon(iconData: FontAwesomeIcons.upRightFromSquare),
          ],
        ),
      ),
    );
  }
}

class _AppBarIcon extends StatelessWidget {
  final IconData iconData;
  final double marginLeft;

  const _AppBarIcon({
    Key? key,
    required this.iconData,
    this.marginLeft = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(left: marginLeft), child: Icon(iconData));
  }
}
