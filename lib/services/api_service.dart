import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/scheduling.dart';

class ApiService {
  final String baseUrl = 'https://localhost:3000/api/scheduling';

  Future<List<Scheduling>> getAgendamentos() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Scheduling> scheduling = body
          .map((dynamic item) => Scheduling.fromJson(item))
          .toList()
          .cast<Scheduling>();
      return scheduling;
    } else {
      throw Exception('Falha ao carregar agendamentos');
    }
  }
}
