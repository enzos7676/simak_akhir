import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  final Function(DateTime) onDateSelected;

  const DatePicker({required this.onDateSelected, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        DateTime? selectedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        );
        if (selectedDate != null) {
          onDateSelected(selectedDate);
        }
      },
      child: const Text('Pilih Tanggal'),
    );
  }
}
