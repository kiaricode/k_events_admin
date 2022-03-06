import 'package:flutter/material.dart';

import 'custom_text.dart';

class AppDataTable extends StatelessWidget {
  const AppDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DataTable(columns: const [
        DataColumn(
            label: CustomText(text: "Nome", fontWeight: FontWeight.bold)),
        DataColumn(
            label: CustomText(text: "Preço", fontWeight: FontWeight.bold)),
        DataColumn(
            label: CustomText(text: "Categoria", fontWeight: FontWeight.bold)),
        DataColumn(
            label: CustomText(text: "Tipo", fontWeight: FontWeight.bold)),
        DataColumn(
            label: CustomText(text: "Data", fontWeight: FontWeight.bold)),
      ], rows: const [
        DataRow(
          cells: [
            DataCell(Text('Sarah')),
            DataCell(Text('19')),
            DataCell(Text('House Party')),
            DataCell(Text('Publico')),
            DataCell(Text('12/02/2022')),
          ],
        ),
      ]),
    );
  }
}
