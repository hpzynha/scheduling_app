import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  final CalendarFormat calendarFormat;
  final DateTime focusedDay;
  final DateTime? selectedDay;
  final Function(DateTime, DateTime) onDaySelected;

  const CalendarWidget({
    super.key,
    required this.calendarFormat,
    required this.focusedDay,
    required this.selectedDay,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: theme.primaryColor,
      child: TableCalendar(
        locale: 'pt_BR',
        firstDay: DateTime(2025, 1, 1),
        lastDay: DateTime.utc(2140, 1, 1),
        focusedDay: focusedDay,
        calendarFormat: calendarFormat,
        selectedDayPredicate: (day) {
          return isSameDay(selectedDay, day);
        },
        calendarStyle: CalendarStyle(
          todayDecoration: BoxDecoration(
            color: theme.focusColor,
            shape: BoxShape.circle,
          ),
          selectedDecoration: BoxDecoration(
            color: theme.focusColor,
            shape: BoxShape.circle,
          ),
          weekendTextStyle: const TextStyle(
            color: Colors.red, // Cor dos finais de semana
            fontSize: 16, // Tamanho do texto dos dias do fim de semana
            fontWeight: FontWeight.bold,
          ),
          defaultTextStyle: TextStyle(
              color: isDarkMode
                  ? const Color(0xFFF7F7F7)
                  : const Color(0XFF050505) // Cor dos dias da semana
              ),
          outsideTextStyle: TextStyle(
            color: isDarkMode
                ? Colors.white
                : Colors.black38, // Dias do mês anterior/próximo
            fontSize: 14,
          ),
        ),
        headerStyle: HeaderStyle(
          titleTextStyle: TextStyle(
            color: isDarkMode
                ? const Color(0xFFF7F7F7)
                : const Color(0XFF050505), // Cor do título do calendário
            fontSize: 20, // Tamanho do texto do título do calendário
            fontWeight: FontWeight.bold,
          ),
          formatButtonDecoration: BoxDecoration(
            color: theme.focusColor,
            borderRadius: BorderRadius.circular(12),
          ),
          leftChevronIcon: Icon(
            Icons.chevron_left,
            color:
                isDarkMode ? const Color(0xFFF7F7F7) : const Color(0XFF050505),
          ),
          rightChevronIcon: Icon(
            Icons.chevron_right,
            color: isDarkMode ? Colors.white : Colors.black87,
          ),
        ),
        onDaySelected: onDaySelected,
      ),
    );
  }
}
