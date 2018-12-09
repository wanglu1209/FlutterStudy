import 'package:flutter/material.dart';

final List<String> strItems = <String>[
  '图标_keyboard',
  '图标_print',
  '图标_router',
  '图标_pages',
  '图标_zoom_out_map',
  '图标_zoom_out',
  '图标_youtube_searched_for',
  '图标_wifi_tethering',
  '图标_wifi_lock',
  '图标_widgets',
  '图标_weekend',
  '图标_web',
  '图标_accessible',
  '图标_ac_unit',
];

class MyListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Text('${strItems[index]}');
      },
    );
  }
}
