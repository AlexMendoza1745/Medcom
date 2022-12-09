import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:medocom/models/TinformacionM.dart';
import 'package:http/http.dart' as http;

class informacionM_services extends ChangeNotifier {
  final String baseURL = 'medcom-298eb-default-rtdb.firebaseio.com';
  
  final List<InformacionM> informacion_list = [];
  bool isLoading = true;
  informacionM_services() {
    loadInformacion();
  }
  Future loadInformacion() async {
    isLoading = true;
    notifyListeners();
    final url = Uri.https(baseURL, 'tarjetas.json');
    final resp = await http.get(url);
    final Map<String, dynamic> informacionMap = json.decode(resp.body);
    print(informacionMap);
    informacionMap.forEach((key, value) {
      final temp = InformacionM.fromMap(value);
      temp.id = key;
      informacion_list.add(temp);
    });
    isLoading = false;
    notifyListeners();
    print(informacion_list[0].activo);
  }
}
