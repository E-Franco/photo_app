import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';
import 'components/grey_dot_component.dart';
import '../pages.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
              child: Image.asset(
                AppImages.intro,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const GreyDotComponent(),
                const SizedBox(width: 5),
                const GreyDotComponent(),
                const SizedBox(width: 5),
                Container(
                  width: 40,
                  height: 10,
                  decoration: BoxDecoration(
                    color: AppColors.mainBlue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            Labels.introHeader,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            Labels.introSubtitle,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.grey),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              // onPressed: () => Navigator.of(context).push(CupertinoPageRoute(builder: (_) => ProfilePage())),
              onPressed: () async {
                final deviceInfoPlugin = DeviceInfoPlugin();
                String? userAgent;
                if (Platform.isAndroid) {
                  AndroidDeviceInfo build = await deviceInfoPlugin.androidInfo;
                  userAgent = build.model;
                } else if (Platform.isIOS) {
                  IosDeviceInfo data = await deviceInfoPlugin.iosInfo;
                  userAgent = data.model;
                }

                print(userAgent);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.mainBlue,
                shape: const StadiumBorder(),
                minimumSize: const Size(0, 50),
              ),
              child: const Text(Labels.introAction),
            ),
          )
        ],
      ),
    );
  }
}
