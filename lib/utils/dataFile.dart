import 'package:iconsax/iconsax.dart';

import '../models/events_model.dart';
import '../models/notification_model.dart';
import '../views/guest_area/staff_services/utils/model.dart';

class DataFile {

  static List<ModelPopularEvents> popularEventList = [
    ModelPopularEvents("event1.png", "Stakeholder Summit 2022", "12-Nov-2022"),
    ModelPopularEvents("event2.png", "The Largest Energy Exhibition in West Africa", "12-Nov-2022"),
    ModelPopularEvents("event1.png", "The Largest Energy Exhibition in West Africa", "12-Nov-2022"),
    ModelPopularEvents("event2.png", "The Largest Energy Exhibition in West Africa", "12-Nov-2022"),
  ];

  static List<ModelNotification> notificationList = [
    ModelNotification(
        "Lorem ipsum dolor",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed maximus congue rutrum. Morbi malesuada eleifend eros vel malesuada. Duis sed molestie purus.",
        "1 h ago",
        "Today"),
    ModelNotification(
        "Lorem ipsum dolor",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed maximus congue rutrum. Morbi malesuada eleifend eros vel malesuada. Duis sed molestie purus.",
        "1 h ago",
        "Today"),
    ModelNotification(
        "Lorem ipsum dolor",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed maximus congue rutrum. Morbi malesuada eleifend eros vel malesuada. Duis sed molestie purus.",
        "03:00 pm",
        "Yesterday"),
    ModelNotification(
        "Lorem ipsum dolor",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed maximus congue rutrum. Morbi malesuada eleifend eros vel malesuada. Duis sed molestie purus.",
        "01:00 pm",
        "Yesterday"),
  ];

  static List<ModalFavourite> favouriteList = [
    ModalFavourite(
        "25 July", "favourite1.png", "Art Festival", "South Dakota", "\$25.33"),
    ModalFavourite("20 July", "favourite2.png", "Business Party",
        "Mesa, New Jersey", "\$20.40"),
    ModalFavourite("22 July", "favourite3.png", "Music Festival",
        "Shiloh, Hawaii", "\$19.99"),
    ModalFavourite("27 July", "favourite4.png", "Corporate Event",
        "Celina, Delaware", "\$23.53"),
    ModalFavourite(
        "29 July", "favourite5.png", "Food Festivals", "New Mexico", "\$28.99"),
    ModalFavourite("29 July", "favourite6.png", "Marketing Event",
        "WestSanta Ana", "\$45.25")
  ];

  static List<StaffServicesModel> staffServicesList = [
    StaffServicesModel(Iconsax.messages, "Message Centre", "/claims_management"),
    StaffServicesModel(Iconsax.global,"Intranet portal", "/intranet_portal"),
    StaffServicesModel(Iconsax.document_text,"Budget portal", "/budget_portal"),
    StaffServicesModel(Iconsax.teacher, "Training portal", "/training_portal"),
    StaffServicesModel(Iconsax.copy, "Office365", "/office_365"),
    StaffServicesModel(Iconsax.task_square, "Claims Mgmt", "/claims_management"),
  ];

}