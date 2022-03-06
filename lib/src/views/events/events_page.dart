import 'package:flutter/material.dart';
import 'package:k_events_admin/src/shared/widgets/custom_text.dart';
import 'package:k_events_admin/src/shared/widgets/text_field.dart';

import '../../shared/widgets/app_text_button.dart';
import '../../shared/widgets/event_card.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
        controller: ScrollController(keepScrollOffset: true),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 48, right: 20, left: 20, bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                const AppTextField(
                  label: "Pesquisar",
                  hintText: "Pesquisar...",
                  prefixIcon: Icons.search,
                ),
                const SizedBox(width: 18),
                const AppTextButton(text: "Filtrar"),
                const Expanded(child: SizedBox()),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const CustomText(
                        text: "Adicionar Evento",
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 28),
            Container(
              margin: const EdgeInsets.only(left: 8),
              child: const CustomText(
                text: "Lista de Eventos",
                size: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                spacing: 10,
                runSpacing: 18,
                alignment: WrapAlignment.spaceBetween,
                children: const [
                  EventCard(),
                  EventCard(),
                  EventCard(),
                  EventCard(),
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
