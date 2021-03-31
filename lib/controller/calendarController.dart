/*
import 'dart:developer';
import 'dart:io';

import 'package:asi_gestion_absences/model/user.dart';
import 'package:flutter/material.dart';
import "package:googleapis_auth/auth_io.dart";
import 'package:googleapis/calendar/v3.dart';
import 'package:url_launcher/url_launcher.dart';

class CalendarClient {
  static const _scopes = const [CalendarApi.CalendarScope];
  static var _credentials = ClientId(
      Platform.isAndroid
          ? "337199344923-m04qfmmnjv5gbgsg34om7e8orsrph8ed.apps.googleusercontent.com"
          : "IOS key",
      "");

  /*final accountCredentials = new ServiceAccountCredentials.fromJson({
    "private_key_id": "",
    "private_key": "",
    "client_email": "ha_bouikken_bahi_amar@esi.dz",
    "client_id": "337199344923-m04qfmmnjv5gbgsg34om7e8orsrph8ed.apps.googleusercontent.com",
    "type": "Android "
  });*/

  // access token: ya29.a0AfH6SMB3vjMa947ImTeuvbbp7WUalUXO2i7SN7sQ5rtHlhi0EQeDCR8rRGppXH3gbvoNqptMZW0mvKfrEQ42hj6FiMGvzw40jElVjEFzElkZiWfG_Rdijpkg2gSYCntLup2EClrkCc3Qg7ZLSkLtgjkM24dL
  // refresh token: 1//031sbsz-e4sbUCgYIARAAGAMSNwF-L9IrbLmVlbWIgnAQ9B2e8Lz4cLZTqXtNDfOxH9R5HZoVMgRhRqlNYOMmWrjaa5Z9ZYKFFU4

  void getCalendarEvents() {
    clientViaUserConsent(_credentials, _scopes, prompt)
        .then((AuthClient client) {
      debugPrint(' access token: ' +
          client.credentials.accessToken.data +
          ' refresh token ' +
          client.credentials.refreshToken);
      CalendarApi(client).calendarList.list().then((calendars) {
        for (int i = 0; i < calendars.items.length; i++) {
          debugPrint(calendars.items[i].summary);
        }
        //debugPrint(calList.items[0].summary+calList.items[1].summary+calList.items[2].summary+calList.items[3].summary);
      });
      /*CalendarApi(client).events.list("c_hog3lcfnods6id61bniim4crg8@group.calendar.google.com").then((events) {
        for (int j = 0; j < events.items.length; j++) {
          debugPrint(events.items[j].summary);
        }
        //debugPrint(calList.items[0].summary+calList.items[1].summary+calList.items[2].summary+calList.items[3].summary);
      });*/
      /*var calendarEvents = calendarApi.events.list("c_hog3lcfnods6id61bniim4crg8@group.calendar.google.com");
      calendarEvents.then((events) {
        for (int j = 0; j < events.items.length; j++) {
          debugPrint(events.items[j].summary);
        }
      });*/
      client.close();
    });
  }

  void prompt(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

*/