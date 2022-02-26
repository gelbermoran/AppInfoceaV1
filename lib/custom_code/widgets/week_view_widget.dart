// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:calendar_view/calendar_view.dart';

class WeekViewWidget extends StatefulWidget {
  const WeekViewWidget({
    Key key,
    this.width,
    this.height,
    this.events,
    this.heightPerMinute,
  }) : super(key: key);

  final double width;
  final double height;
  final dynamic events;
  final double heightPerMinute;

  @override
  _WeekViewWidgetState createState() => _WeekViewWidgetState();
}

class _WeekViewWidgetState extends State<WeekViewWidget> {
  EventController ec;

  @override
  void initState() {
    super.initState();
    ec = EventController();

    List<dynamic> events = widget.events["events"];
    if (events != null) {
      for (var i = 0; i < events.length; i++) {
        dynamic e = events[i];
        final event = CalendarEventData(
          date: DateTime(e["year"], e["month"], e["day"]),
          startTime: DateTime(e["year"], e["month"], e["day"], e["start_hour"],
              e["start_minute"]),
          endTime: DateTime(
              e["year"], e["month"], e["day"], e["end_hour"], e["end_minute"]),
          title: e["title"],
        );
        ec.add(event);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: WeekView(
        controller: ec,
        width: widget.width,
        heightPerMinute: widget.heightPerMinute,
      ),
    );
  }
}
