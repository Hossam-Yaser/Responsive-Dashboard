import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/search_box.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/suffix_profile_related_icons.dart';
import 'package:responsive_dashboard/views/shared_widgets/main_logo_widget.dart';

class TopBarBuilder extends StatelessWidget {
  const TopBarBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: MainLogoWidget()),
        Expanded(flex: 3, child: SearchBox()),
        Expanded(flex: 2, child: SuffixProfileRelatedIcons()),
      ],
    );
  }
}
