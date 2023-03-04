import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';



class WorldTime {

  String? location;
  String? time;

  String? flag;
  String? url;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    //get data from API
    Response response = await get(
        Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);

    //get properties from data
    String dateTime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    //create new dateTime object
    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offset)));

    //set time
    time = (DateFormat.jm().format(now));

  }
}