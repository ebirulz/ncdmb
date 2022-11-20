import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

Widget serviceListWidget(BuildContext context, {String? name, String? img, String? link, IconData? icon}){
  return InkWell(
    onTap: (){
      Navigator.pushNamed(context,  link!);
    },
    child: Container(
      padding: const EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
        color: const Color(0xff235A45),
        borderRadius: radius(10),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: 16,
        title: Text(name!, style: const TextStyle( color: Colors.white, fontSize: 14),),
        leading: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            //color: Colors.white,
            borderRadius: radius(10),
          ),
          //child: Image.asset(img!, height: 60, color: defaultGreen,),
          child: Icon(icon!, size: 40, color: Colors.white,),
        ),
      ),
    ),
  );
}