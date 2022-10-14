// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

Widget ChatBar() {
  return BottomAppBar(
    child: SizedBox(
        height: 100,
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                  child: Text("Your Message"),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5.0,
                ),
                const Icon(
                  Icons.alternate_email,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                const Icon(
                  Icons.attach_file,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                const Icon(
                  Icons.photo_camera,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      // color: Colors.green,
                      child: Row(
                        children: [
                          const Text(
                            "Send",
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          const Icon(
                            Icons.send,
                            color: Colors.white,
                          )
                        ],
                      )),
                )
              ],
            )
          ],
        )),
  );
}
