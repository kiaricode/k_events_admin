import 'package:flutter/material.dart';
import 'package:k_events_admin/src/shared/widgets/custom_text.dart';
import 'package:k_events_admin/src/shared/widgets/text_field.dart';

import '../../shared/widgets/app_text_button.dart';
import '../../shared/widgets/event_card.dart';

class InvitesPage extends StatelessWidget {
  const InvitesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
        controller: ScrollController(keepScrollOffset: true),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 48,
            right: 20,
            left: 20,
            bottom: 30,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Row(
              children: [
                AppTextField(
                  label: "Pesquisar",
                  hintText: "Pesquisar...",
                  prefixIcon: Icons.search,
                ),
                SizedBox(width: 10),
                AppTextButton(
                  text: "Filtrar",
                  iconData: Icons.filter_alt,
                ),
              ],
            ),
            const SizedBox(height: 38),
            // Text(size.width.toString()),
            Container(
              margin: const EdgeInsets.only(left: 8),
              child: const CustomText(
                text: "Meus Convites",
                size: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: double.infinity,
              child: Wrap(
                spacing: 10,
                runSpacing: 18,
                alignment: WrapAlignment.start,
                children: [
                  EventCard(),
                  EventCard(),
                  EventCard(),
                  EventCard(),
                  EventCard(),
                  EventCard(),
                  EventCard(),
                  EventCard(),
                  EventCard(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
