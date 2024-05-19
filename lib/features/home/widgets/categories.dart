import 'package:flutter/material.dart';
import 'package:flutter_layout_travel_app/uikit/ui_colors.dart';

class Item {
  final Color color;
  final String route;
  final String title;

  Item({required this.color, required this.route, required this.title});
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  static final List<Item> items = [
    Item(
        color: UIColor.lightPurple,
        route: '/natural-wonders',
        title: 'Natural Wonders'),
    Item(color: UIColor.lightPurple, route: '/nightlife', title: 'Nightlife'),
    Item(color: UIColor.lightBlue, route: '/landmarks', title: 'Landmarks'),
    Item(color: UIColor.lightBlue, route: '/cultural', title: 'Cultural'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 14,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: (1 / 0.75),
        children: items.map((item) => GridItem(item: item)).toList());
  }
}

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: item.color),
        height: 112,
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(item.route);
          },
          child: Center(
              child: Text(item.title,
                  style: Theme.of(context).textTheme.bodyMedium)),
        ));
  }
}
