import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:ncdmb/utils/color_data.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, {String? name, String? img, String? link}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: defaultGreen.withOpacity(1.0),
        borderRadius: radius(10),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: 16,
        title: Text(name!),
        leading: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: radius(10),
          ),
          child: Image.asset(img!, height: 24, width: 24,),
        ),
      ),
    );
  }
}
