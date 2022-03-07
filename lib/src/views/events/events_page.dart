import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:k_events_admin/src/shared/themes/app_colors.dart';
import 'package:k_events_admin/src/shared/widgets/custom_text.dart';
import 'package:k_events_admin/src/shared/widgets/events_schedule.dart';
import 'package:k_events_admin/src/shared/widgets/text_field.dart';

import '../../shared/widgets/app_text_button.dart';
import '../../shared/widgets/event_card.dart';
import '../../shared/widgets/event_card2.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
          controller: ScrollController(keepScrollOffset: true),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SizedBox(
                    // height: size.height,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 48,
                        right: 20,
                        left: 20,
                        bottom: 30,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
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
                                AppTextButton(text: "", iconData: Icons.add),
                              ],
                            ),
                            const SizedBox(height: 38),
                            // Text(size.width.toString()),
                            Container(
                              margin: const EdgeInsets.only(left: 8),
                              child: const CustomText(
                                text: "Meus Eventos",
                                size: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              margin: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: const [
                                  CustomText(
                                    text: "Todos",
                                    color: AppColors.gray,
                                    size: 14,
                                  ),
                                  SizedBox(width: 10),
                                  CustomText(
                                    text: "Privados",
                                    size: 14,
                                    color: AppColors.gray,
                                  ),
                                  SizedBox(width: 10),
                                  CustomText(
                                    text: "Adicionar",
                                    size: 14,
                                    color: AppColors.gray,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                            const SizedBox(height: 18),
                            SizedBox(
                              width: double.infinity,
                              child: Wrap(
                                spacing: 14,
                                runSpacing: 18,
                                alignment: WrapAlignment.spaceBetween,
                                children: const [
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
                ),
                const EventsSchedule(),
              ],
            ),
          )),
    );
  }
}
