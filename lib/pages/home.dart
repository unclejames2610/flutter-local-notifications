import 'package:flutter/material.dart';
import 'package:notifications_tutorial/local_notifications.dart';
import 'package:notifications_tutorial/pages/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    listenToNotifications();
    super.initState();
  }

  listenToNotifications() {
    print("Listening to notification");
    LocalNotifications.onClickNotification.stream.listen((event) {
      Navigator.of(context).pushNamed(event);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  child: Text("Simple Notification"),
                  onPressed: () {
                    // NotificationApi.showNotification(
                    //     title: "Ebuka",
                    //     body: "Look at this",
                    //     payload: 'ebuka.u');

                    // LocalNotificationService()
                    //     .showNotificationAndroid("Title", "value");

                    LocalNotifications.showSimpleNotification(
                        title: "Simple Notification",
                        body: "This is a simple notification",
                        payload: "/second/");
                  },
                ),
                TextButton(
                  child: Text("Simple Notification 2"),
                  onPressed: () {
                    // NotificationApi.showNotification(
                    //     title: "Ebuka",
                    //     body: "Look at this",
                    //     payload: 'ebuka.u');

                    // LocalNotificationService()
                    //     .showNotificationAndroid("Title", "value");

                    LocalNotifications.showSimpleNotification(
                        title: "Simple Notification 2",
                        body: "This is a simple notification 2",
                        payload: "/third/");
                  },
                ),
                TextButton(
                  child: Text("Schedule Notification"),
                  onPressed: () {
                    LocalNotifications.showPeriodicNotifications(
                        title: "periodic Notification",
                        body: "This is a periodic notification",
                        payload: "periodic");
                  },
                ),
                TextButton(
                  child: Text("Remove Notification"),
                  onPressed: () {
                    LocalNotifications.cancel(1);
                  },
                ),
                TextButton(
                  child: Text("Remove All Notification"),
                  onPressed: () {
                    LocalNotifications.cancelAll();
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
