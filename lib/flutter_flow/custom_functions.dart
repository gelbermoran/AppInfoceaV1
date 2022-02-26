import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

dynamic dummyEvent() {
  Map<String, dynamic> result = {};
  List<dynamic> eventList = [];
  dynamic event = {};
  event["year"] = 2022;
  event["month"] = 2;
  event["day"] = 12;
  event["start_hour"] = 6;
  event["start_minute"] = 30;
  event["end_hour"] = 8;
  event["end_minute"] = 30;
  event["title"] = "Ingreso de 50 Animales";
  eventList.add(event);
  result["events"] = eventList;
  return result;
}

String fechasSemana(String periodo) {
  final DateTime now = DateTime.now();
  final DateFormat formatterE = DateFormat('E');
  int dia = now.day;
  switch (periodo) {
    case 'inicio':
      switch (formatterE.format(now)) {
        case 'Tuesday':
          dia = dia - 1;
          break;
        case 'Wednesday':
          dia = dia - 2;
          break;
        case 'Thursday':
          dia = dia - 3;
          break;
        case 'Friday':
          dia = dia - 4;
          break;
        case 'Saturday':
          dia = dia - 5;
          break;
        case 'Sunday':
          dia = dia - 6;
          break;
        default:
          dia = dia;
          break;
      }
      break;
    case 'fin':
      switch (formatterE.format(now)) {
        case 'Monday':
          dia = dia + 6;
          break;
        case 'Tuesday':
          dia = dia + 5;
          break;
        case 'Wednesday':
          dia = dia + 4;
          break;
        case 'Thursday':
          dia = dia + 3;
          break;
        case 'Friday':
          dia = dia + 2;
          break;
        case 'Saturday':
          dia = dia + 1;
          break;
        default:
          dia = dia;
          break;
      }
      break;
    default:
      now;
      break;
  }
  //final String fecha2 = '${now.year}-${now.month}-$dia';
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String fecha = formatter.format(now);
  return fecha;
}
