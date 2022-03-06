import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:k_events_admin/src/shared/widgets/custom_text.dart';
import 'package:k_events_admin/src/shared/widgets/event_category_label.dart';

import '../themes/app_colors.dart';
import 'app_title.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imageSrc =
        "https://media.istockphoto.com/photos/abstract-background-wallpaper-picture-id952039286?s=612x612";

    return Container(
      width: 344,
      height: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.lightGrey2),
      ),
      child: Row(children: [
        Container(
          width: 136,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(imageSrc),
              )),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 160,
                  child: CustomText(
                    text: "Game Over Dero...",
                    fontWeight: FontWeight.bold,
                    size: 17,
                  ),
                ),
                InkWell(
                    onTap: () {},
                    child: const Icon(Icons.more_horiz, size: 30)),
              ],
            ),
            const SizedBox(height: 4),
            const AppTitle(text: "2.000,00 kz", iconData: Icons.price_change),
            const AppTitle(
              text: "10 de Oct, 20:00",
              iconData: Icons.date_range,
            ),
            const SizedBox(height: 10),
            const EventCategoryLabel(text: "House Party")
          ],
        )
      ]),
    );
  }
}
