import 'package:flutter/material.dart';
import 'package:ncdmb/views/guest_area/staff_services/utils/model.dart';

import '../../../utils/color_data.dart';
import '../../../utils/constant.dart';
import '../../../utils/dataFile.dart';
import '../../../utils/device_util.dart';
import '../../../utils/fetch_pixels.dart';
import '../../../utils/spacing.dart';
import '../../../widgets/svg_image.dart';
import '../../../widgets/widget_utils.dart';

class StaffServicesCategoryScreen extends StatefulWidget {
  const StaffServicesCategoryScreen({Key? key}) : super(key: key);

  @override
  State<StaffServicesCategoryScreen> createState() => _StaffServicesCategoryScreenState();
}

class _StaffServicesCategoryScreenState extends State<StaffServicesCategoryScreen> {

  static List<StaffServicesModel> staffServicesLists = DataFile.staffServicesList;
  var noOfGrid = 3;

  @override
  Widget build(BuildContext context) {
    if (DeviceUtil.isTablet) {
      noOfGrid = 5;
    }
    FetchPixels(context);
    double setVal = FetchPixels.getDefaultHorSpace(context);
    return WillPopScope(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: backGroundColor,
          body: SafeArea(
            child: Column(
              children: [
                getVerSpace(FetchPixels.getPixelHeight(20)),
                getPaddingWidget(
                    EdgeInsets.symmetric(horizontal: setVal),
                    gettoolbarMenu(context, "back.svg", () {
                      Constant.backToPrev(context);
                    },
                        istext: true,
                        title: "Staff Services",
                        fontsize: 24,
                        weight: FontWeight.w900,
                        textColor: Colors.black)),
                getVerSpace(FetchPixels.getPixelHeight(32)),
                Expanded(child: categoryView())
              ],
            ),
          ),
        ),
        onWillPop: () async {
          Constant.backToPrev(context);
          return false;
        });
  }

  categoryView() {
    return Container(
      child: GridView.builder(
        itemCount: staffServicesLists.length,
        padding:
        EdgeInsets.symmetric(horizontal: FetchPixels.getPixelWidth(20)),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: noOfGrid,
            crossAxisSpacing: FetchPixels.getPixelWidth(19),
            mainAxisSpacing: FetchPixels.getPixelHeight(20),
            mainAxisExtent: FetchPixels.getPixelHeight(121)),
        itemBuilder: (BuildContext context, int index) {
          StaffServicesModel staffServiceCategory = staffServicesLists[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, staffServiceCategory.route);
            },
            child: Container(
              padding: EdgeInsets.only(
                  top: FetchPixels.getPixelHeight(24),
                  bottom: FetchPixels.getPixelHeight(16)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0.0, 4.0)),
                  ],
                  borderRadius:
                  BorderRadius.circular(FetchPixels.getPixelHeight(12))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(staffServiceCategory.icon, size: 40, color: defaultGreen,),
                  getVerSpace(FetchPixels.getPixelHeight(15)),
                  getCustomFont(staffServiceCategory.name ?? '', 14, Colors.black, 1,
                      fontWeight: FontWeight.w400)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
