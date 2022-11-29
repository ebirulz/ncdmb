import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ncdmb/views/guest_area/executive_secretary/es_screen.dart';
import '../../../../utils/fetch_pixels.dart';
import '../../../../widgets/svg_image.dart';

Widget executiveSec(BuildContext context){
  return InkWell(
    onTap: (){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ExecutiveSecretaryScreen())
      );
    },
    child: Container(
      padding: const EdgeInsets.only(left: 10),
      height: 150,
      width: double.infinity,
      decoration:const  BoxDecoration(
        color: Color(0xff235A45),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 135,
            width: 135,
            child: getAssetImage("media/Simbi-Wabote.fw.png", FetchPixels.getPixelHeight(100),  FetchPixels.getPixelWidth(100)),
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            height: 120,
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Engr. Simbi Wabote",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: FetchPixels.getPixelHeight(3),),
                getAssetImage("es_line.png", FetchPixels.getPixelHeight(80),  FetchPixels.getPixelWidth(15)),
                const Text(
                  "The Executive Secretary Nigeria Content Development & Management Board (NCDMB)",
                  style: TextStyle(color: Colors.white, fontSize: 12.8,),
                ),
                SizedBox(height: FetchPixels.getPixelHeight(10),),
                InkWell(
                  onTap: (){},
                  child: Row(
                    children: const [
                      Icon(Iconsax.arrow_right, size: 22, color: Colors.white,),
                      SizedBox(width: 5,),
                      Text('Read More', style: TextStyle(fontSize: 13.3, color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),

    ),
  );
}