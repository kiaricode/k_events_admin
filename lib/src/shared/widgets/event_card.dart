import 'package:flutter/material.dart';
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
      width: 400,
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
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            SizedBox(
              child: CustomText(
                text: "O Reencontro",
                fontWeight: FontWeight.bold,
                size: 17,
              ),
            ),
            SizedBox(height: 4),
            AppTitle(text: "2.000,00 kz", iconData: Icons.price_change),
            AppTitle(
              text: "10 de Oct, 20:00",
              iconData: Icons.date_range,
            ),
            SizedBox(height: 10),
            EventCategoryLabel(text: "House Party")
          ],
        )
      ]),
    );
  }
}
