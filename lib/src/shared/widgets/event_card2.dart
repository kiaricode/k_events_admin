import 'package:flutter/material.dart';
import 'package:k_events_admin/src/shared/widgets/custom_text.dart';

import '../themes/app_colors.dart';
import 'app_title.dart';

class EventCard2 extends StatelessWidget {
  const EventCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imageSrc =
        "https://media.istockphoto.com/photos/abstract-background-wallpaper-picture-id952039286?s=612x612";

    return Container(
      width: 240,
      // height: 240,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.lightGrey2),
      ),
      child: Column(children: [
        Container(
          // width: 136,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(imageSrc),
              )),
        ),
        const SizedBox(width: 10),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
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
              SizedBox(height: 8),
              AppTitle(
                text: "10 de Oct, 20:00",
                iconData: Icons.date_range,
              ),
              SizedBox(height: 10),
              // EventCategoryLabel(text: "House Party")
            ],
          ),
        )
      ]),
    );
  }
}
