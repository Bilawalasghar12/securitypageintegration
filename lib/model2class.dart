import 'dart:convert';


Job jobFromMap(String str) => Job.fromMap(json.decode(str));

String jobToMap(Job data) => json.encode(data.toMap());

class Job {
  Job({
    required this.status,
    required this.message,
    required this.data,
  });

  final int status;
  final String message;
  final Data data;

  factory Job.fromMap(Map<String, dynamic> json) => Job(
    status: json["status"],
    message: json["message"],
    data: Data.fromMap(json["data"]),
  );

  Map<String, dynamic> toMap() => {
    "status": status,
    "message": message,
    "data": data.toMap(),
  };
}

class Data {
  Data({
    required this.id,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.email,
    required this.address1,
    required this.address2,
    required this.postCode,
    required this.city,
    required this.telephone,
    required this.eventId,
    required this.paymentStatus,
    required this.paymentReference,
    required this.isEfawAdded,
    required this.course,
    required this.venue,
    required this.center,
    required this.event,
    required this.courseStartDate,
    required this.courseEndDate,
    required this.coursePrice,
    required this.shipping,
    required this.efawPrice,
    required this.ebookPrice,
    required this.plan,
    required this.canBeUpgraded,
    required this.isUpgradable,
    required this.canBeRescheduled,
    required this.retakes,
    required this.retakeFees,
    required this.referalCode,
    required this.stripeCustomerId,
    required this.stripePaymentMethod,
    this.partialPayment,
  });

  final int id;
  final String firstName;
  final String middleName;
  final String lastName;
  final String email;
  final String address1;
  final String address2;
  final String postCode;
  final String city;
  final String telephone;
  final int eventId;
  final String paymentStatus;
  final String paymentReference;
  final String isEfawAdded;
  final Course course;
  final DataVenue venue;
  final DataCenter center;
  final Event event;
  final DateTime courseStartDate;
  final DateTime courseEndDate;
  final String coursePrice;
  final String shipping;
  final int efawPrice;
  final int ebookPrice;
  final Plan plan;
  final List<dynamic> canBeUpgraded;
  final bool isUpgradable;
  final bool canBeRescheduled;
  final List<Retake> retakes;
  final String retakeFees;
  final String referalCode;
  final String stripeCustomerId;
  final String stripePaymentMethod;
  final dynamic partialPayment;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    id: json["id"],
    firstName: json["first_name"],
    middleName: json["middle_name"],
    lastName: json["last_name"],
    email: json["email"],
    address1: json["address1"],
    address2: json["address2"],
    postCode: json["post_code"],
    city: json["city"],
    telephone: json["telephone"],
    eventId: json["event_id"],
    paymentStatus: json["payment_status"],
    paymentReference: json["payment_reference"],
    isEfawAdded: json["is_efaw_added"],
    course: Course.fromMap(json["course"]),
    venue: DataVenue.fromMap(json["venue"]),
    center: DataCenter.fromMap(json["center"]),
    event: Event.fromMap(json["event"]),
    courseStartDate: DateTime.parse(json["course_start_date"]),
    courseEndDate: DateTime.parse(json["course_end_date"]),
    coursePrice: json["course_price"],
    shipping: json["shipping"],
    efawPrice: json["efaw_price "],
    ebookPrice: json["ebook_price "],
    plan: Plan.fromMap(json["plan"]),
    canBeUpgraded: List<dynamic>.from(json["can_be_upgraded"].map((x) => x)),
    isUpgradable: json["is_upgradable"],
    canBeRescheduled: json["can_be_rescheduled"],
    retakes: List<Retake>.from(json["retakes"].map((x) => Retake.fromMap(x))),
    retakeFees: json["retake_fees"],
    referalCode: json["referal_code"],
    stripeCustomerId: json["stripe_customer_id"],
    stripePaymentMethod: json["stripe_payment_method"],
    partialPayment: json["partial_payment"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "first_name": firstName,
    "middle_name": middleName,
    "last_name": lastName,
    "email": email,
    "address1": address1,
    "address2": address2,
    "post_code": postCode,
    "city": city,
    "telephone": telephone,
    "event_id": eventId,
    "payment_status": paymentStatus,
    "payment_reference": paymentReference,
    "is_efaw_added": isEfawAdded,
    "course": course.toMap(),
    "venue": venue.toMap(),
    "center": center.toMap(),
    "event": event.toMap(),
    "course_start_date": "${courseStartDate.year.toString().padLeft(4, '0')}-${courseStartDate.month.toString().padLeft(2, '0')}-${courseStartDate.day.toString().padLeft(2, '0')}",
    "course_end_date": "${courseEndDate.year.toString().padLeft(4, '0')}-${courseEndDate.month.toString().padLeft(2, '0')}-${courseEndDate.day.toString().padLeft(2, '0')}",
    "course_price": coursePrice,
    "shipping": shipping,
    "efaw_price ": efawPrice,
    "ebook_price ": ebookPrice,
    "plan": plan.toMap(),
    "can_be_upgraded": List<dynamic>.from(canBeUpgraded.map((x) => x)),
    "is_upgradable": isUpgradable,
    "can_be_rescheduled": canBeRescheduled,
    "retakes": List<dynamic>.from(retakes.map((x) => x.toMap())),
    "retake_fees": retakeFees,
    "referal_code": referalCode,
    "stripe_customer_id": stripeCustomerId,
    "stripe_payment_method": stripePaymentMethod,
    "partial_payment": partialPayment,
  };
}

class DataCenter {
  DataCenter({
    required this.id,
    required this.centerName,
  });

  final int id;
  final String centerName;

  factory DataCenter.fromMap(Map<String, dynamic> json) => DataCenter(
    id: json["id"],
    centerName: json["center_name"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "center_name": centerName,
  };
}

class Course {
  Course({
    required this.id,
    required this.courseName,
  });

  final int id;
  final String courseName;

  factory Course.fromMap(Map<String, dynamic> json) => Course(
    id: json["id"],
    courseName: json["course_name"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "course_name": courseName,
  };
}

class Event {
  Event({
    required this.id,
    required this.courseId,
    required this.course,
    required this.venue,
    required this.center,
    required this.trainer,
    required this.startDate,
    required this.withoutFawStartDate,
    required this.endDate,
    required this.startTime,
    required this.startTimeAndDate,
    required this.endTime,
    required this.formattedCourseDates,
    required this.withoutFawCourseDates,
    required this.formattedCourseTiming,
    required this.courseDeliveryType,
    required this.directCheckout,
    required this.crossPrice,
    required this.normalPrice,
    required this.saverPrice,
    required this.flexiPrice,
    required this.premiumPrice,
    required this.bronzePrice,
    required this.silverPrice,
    required this.goldPrice,
    required this.platinumPrice,
    required this.laybuyPrice,
    required this.hummPrice,
    required this.enableFlexiPlus,
    required this.enablePremium,
    required this.enableGold,
    required this.enablePlatinum,
    required this.isDirectCheckout,
    required this.isDepositPaymentEnabled,
    required this.isEasyApplyEnabled,
    required this.showFreeLearnerPack,
    required this.efaw,
    required this.courseDuration,
    required this.seatsLeft,
    this.textOverCtaOnCourseFinder,
    required this.totalBookingForVirtualCourse,
    required this.totalBookingForSelfpacedCourse,
    required this.products,
    required this.firstaidGuruEventId,
    required this.newEasyApply,
    required this.trustPilotReviews,
    required this.easyApplyObj,
  });

  final int id;
  final int courseId;
  final Course course;
  final EventVenue venue;
  final EventCenter center;
  final Trainer trainer;
  final DateTime startDate;
  final DateTime withoutFawStartDate;
  final DateTime endDate;
  final String startTime;
  final String startTimeAndDate;
  final String endTime;
  final String formattedCourseDates;
  final String withoutFawCourseDates;
  final String formattedCourseTiming;
  final int courseDeliveryType;
  final bool directCheckout;
  final double crossPrice;
  final String normalPrice;
  final String saverPrice;
  final String flexiPrice;
  final String premiumPrice;
  final String bronzePrice;
  final String silverPrice;
  final String goldPrice;
  final String platinumPrice;
  final String laybuyPrice;
  final String hummPrice;
  final bool enableFlexiPlus;
  final bool enablePremium;
  final bool enableGold;
  final bool enablePlatinum;
  final bool isDirectCheckout;
  final bool isDepositPaymentEnabled;
  final bool isEasyApplyEnabled;
  final bool showFreeLearnerPack;
  final Efaw efaw;
  final String courseDuration;
  final int seatsLeft;
  final dynamic textOverCtaOnCourseFinder;
  final String totalBookingForVirtualCourse;
  final String totalBookingForSelfpacedCourse;
  final List<Product> products;
  final int firstaidGuruEventId;
  final bool newEasyApply;
  final String trustPilotReviews;
  final EasyApplyObj easyApplyObj;

  factory Event.fromMap(Map<String, dynamic> json) => Event(
    id: json["id"],
    courseId: json["course_id"],
    course: Course.fromMap(json["course"]),
    venue: EventVenue.fromMap(json["venue"]),
    center: EventCenter.fromMap(json["center"]),
    trainer: Trainer.fromMap(json["trainer"]),
    startDate: DateTime.parse(json["start_date"]),
    withoutFawStartDate: DateTime.parse(json["without_faw_start_date"]),
    endDate: DateTime.parse(json["end_date"]),
    startTime: json["start_time"],
    startTimeAndDate: json["start_time_and_date"],
    endTime: json["end_time"],
    formattedCourseDates: json["formatted_course_dates"],
    withoutFawCourseDates: json["without_faw_course_dates"],
    formattedCourseTiming: json["formatted_course_timing"],
    courseDeliveryType: json["course_delivery_type"],
    directCheckout: json["direct_checkout"],
    crossPrice: json["cross_price"]?.toDouble(),
    normalPrice: json["normal_price"],
    saverPrice: json["saver_price"],
    flexiPrice: json["flexi_price"],
    premiumPrice: json["premium_price"],
    bronzePrice: json["bronze_price"],
    silverPrice: json["silver_price"],
    goldPrice: json["gold_price"],
    platinumPrice: json["platinum_price"],
    laybuyPrice: json["laybuy_price"],
    hummPrice: json["humm_price"],
    enableFlexiPlus: json["enable_flexi_plus"],
    enablePremium: json["enable_premium"],
    enableGold: json["enable_gold"],
    enablePlatinum: json["enable_platinum"],
    isDirectCheckout: json["is_direct_checkout"],
    isDepositPaymentEnabled: json["is_deposit_payment_enabled"],
    isEasyApplyEnabled: json["is_easy_apply_enabled"],
    showFreeLearnerPack: json["show_free_learner_pack"],
    efaw: Efaw.fromMap(json["efaw"]),
    courseDuration: json["course_duration"],
    seatsLeft: json["seats_left"],
    textOverCtaOnCourseFinder: json["text_over_cta_on_course_finder"],
    totalBookingForVirtualCourse: json["total_booking_for_virtual_course"],
    totalBookingForSelfpacedCourse: json["total_booking_for_selfpaced_course"],
    products: List<Product>.from(json["products"].map((x) => Product.fromMap(x))),
    firstaidGuruEventId: json["firstaid_guru_event_id"],
    newEasyApply: json["new_easy_apply"],
    trustPilotReviews: json["trust_pilot_reviews"],
    easyApplyObj: EasyApplyObj.fromMap(json["easy_apply_obj"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "course_id": courseId,
    "course": course.toMap(),
    "venue": venue.toMap(),
    "center": center.toMap(),
    "trainer": trainer.toMap(),
    "start_date": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
    "without_faw_start_date": "${withoutFawStartDate.year.toString().padLeft(4, '0')}-${withoutFawStartDate.month.toString().padLeft(2, '0')}-${withoutFawStartDate.day.toString().padLeft(2, '0')}",
    "end_date": "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
    "start_time": startTime,
    "start_time_and_date": startTimeAndDate,
    "end_time": endTime,
    "formatted_course_dates": formattedCourseDates,
    "without_faw_course_dates": withoutFawCourseDates,
    "formatted_course_timing": formattedCourseTiming,
    "course_delivery_type": courseDeliveryType,
    "direct_checkout": directCheckout,
    "cross_price": crossPrice,
    "normal_price": normalPrice,
    "saver_price": saverPrice,
    "flexi_price": flexiPrice,
    "premium_price": premiumPrice,
    "bronze_price": bronzePrice,
    "silver_price": silverPrice,
    "gold_price": goldPrice,
    "platinum_price": platinumPrice,
    "laybuy_price": laybuyPrice,
    "humm_price": hummPrice,
    "enable_flexi_plus": enableFlexiPlus,
    "enable_premium": enablePremium,
    "enable_gold": enableGold,
    "enable_platinum": enablePlatinum,
    "is_direct_checkout": isDirectCheckout,
    "is_deposit_payment_enabled": isDepositPaymentEnabled,
    "is_easy_apply_enabled": isEasyApplyEnabled,
    "show_free_learner_pack": showFreeLearnerPack,
    "efaw": efaw.toMap(),
    "course_duration": courseDuration,
    "seats_left": seatsLeft,
    "text_over_cta_on_course_finder": textOverCtaOnCourseFinder,
    "total_booking_for_virtual_course": totalBookingForVirtualCourse,
    "total_booking_for_selfpaced_course": totalBookingForSelfpacedCourse,
    "products": List<dynamic>.from(products.map((x) => x.toMap())),
    "firstaid_guru_event_id": firstaidGuruEventId,
    "new_easy_apply": newEasyApply,
    "trust_pilot_reviews": trustPilotReviews,
    "easy_apply_obj": easyApplyObj.toMap(),
  };
}

class EventCenter {
  EventCenter({
    required this.id,
    required this.centerName,
    required this.avgRating,
    required this.enableLaybuy,
    required this.enableHumm,
    this.enablePayl8R,
    required this.enableShipping,
    required this.enableFasterResult,
    required this.isQualhub,
  });

  final int id;
  final String centerName;
  final AvgRating avgRating;
  final int enableLaybuy;
  final int enableHumm;
  final dynamic enablePayl8R;
  final bool enableShipping;
  final int enableFasterResult;
  final int isQualhub;

  factory EventCenter.fromMap(Map<String, dynamic> json) => EventCenter(
    id: json["id"],
    centerName: json["center_name"],
    avgRating: AvgRating.fromMap(json["avg_rating"]),
    enableLaybuy: json["enable_laybuy"],
    enableHumm: json["enable_humm"],
    enablePayl8R: json["enable_payl8r"],
    enableShipping: json["enable_shipping"],
    enableFasterResult: json["enable_faster_result"],
    isQualhub: json["is_qualhub"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "center_name": centerName,
    "avg_rating": avgRating.toMap(),
    "enable_laybuy": enableLaybuy,
    "enable_humm": enableHumm,
    "enable_payl8r": enablePayl8R,
    "enable_shipping": enableShipping,
    "enable_faster_result": enableFasterResult,
    "is_qualhub": isQualhub,
  };
}

class AvgRating {
  AvgRating({
    required this.avg,
    required this.rating,
    required this.percentage,
    required this.ratingText,
  });

  final String avg;
  final String rating;
  final int percentage;
  final String ratingText;

  factory AvgRating.fromMap(Map<String, dynamic> json) => AvgRating(
    avg: json["avg"],
    rating: json["rating"],
    percentage: json["percentage"],
    ratingText: json["ratingText"],
  );

  Map<String, dynamic> toMap() => {
    "avg": avg,
    "rating": rating,
    "percentage": percentage,
    "ratingText": ratingText,
  };
}

class EasyApplyObj {
  EasyApplyObj({
    required this.easyApplyEnable,
  });

  final bool easyApplyEnable;

  factory EasyApplyObj.fromMap(Map<String, dynamic> json) => EasyApplyObj(
    easyApplyEnable: json["easy_apply_enable"],
  );

  Map<String, dynamic> toMap() => {
    "easy_apply_enable": easyApplyEnable,
  };
}

class Efaw {
  Efaw({
    required this.enabled,
    required this.efawPrice,
  });

  final bool enabled;
  final String efawPrice;

  factory Efaw.fromMap(Map<String, dynamic> json) => Efaw(
    enabled: json["enabled"],
    efawPrice: json["efaw_price"],
  );

  Map<String, dynamic> toMap() => {
    "enabled": enabled,
    "efaw_price": efawPrice,
  };
}

class Product {
  Product({
    required this.id,
    required this.type,
    required this.productName,
    required this.price,
    required this.slashedPrice,
    required this.youSavePrice,
    required this.productImage,
    required this.description,
    required this.recommended,
  });

  final int id;
  final int type;
  final String productName;
  final int price;
  final int slashedPrice;
  final int youSavePrice;
  final String productImage;
  final String description;
  final int recommended;

  factory Product.fromMap(Map<String, dynamic> json) => Product(
    id: json["id"],
    type: json["type"],
    productName: json["product_name"],
    price: json["price"],
    slashedPrice: json["slashed_price"],
    youSavePrice: json["you_save_price"],
    productImage: json["product_image"],
    description: json["description"],
    recommended: json["recommended"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "type": type,
    "product_name": productName,
    "price": price,
    "slashed_price": slashedPrice,
    "you_save_price": youSavePrice,
    "product_image": productImage,
    "description": description,
    "recommended": recommended,
  };
}

class Trainer {
  Trainer({
    required this.id,
    required this.trainerName,
  });

  final int id;
  final String trainerName;

  factory Trainer.fromMap(Map<String, dynamic> json) => Trainer(
    id: json["id"],
    trainerName: json["trainer_name"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "trainer_name": trainerName,
  };
}

class EventVenue {
  EventVenue({
    required this.id,
    required this.venueName,
    required this.venueAddress,
  });

  final int id;
  final String venueName;
  final String venueAddress;

  factory EventVenue.fromMap(Map<String, dynamic> json) => EventVenue(
    id: json["id"],
    venueName: json["venue_name"],
    venueAddress: json["venue_address"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "venue_name": venueName,
    "venue_address": venueAddress,
  };
}

class Plan {
  Plan({
    required this.id,
    required this.planName,
    required this.features,
  });

  final int id;
  final String planName;
  final List<String> features;

  factory Plan.fromMap(Map<String, dynamic> json) => Plan(
    id: json["id"],
    planName: json["plan_name"],
    features: List<String>.from(json["features"].map((x) => x)),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "plan_name": planName,
    "features": List<dynamic>.from(features.map((x) => x)),
  };
}

class Retake {
  Retake({
    required this.id,
    required this.retakeEventId,
    required this.retakeDateId,
    required this.traineeId,
    required this.orderCourseId,
    required this.locationId,
    required this.transactionId,
    required this.retakeTest,
    required this.retakeTestIsPaid,
    required this.retakeTestPayment,
    required this.retakeTestPaymentStatus,
    required this.retakeTestBookingDate,
    required this.retakeTestResultDeclared,
    required this.retakeTestPaymentAmount,
    required this.retakeTestPaymentThrough,
    required this.retakeTestPaymentDate,
    this.attendanceStatus,
    required this.efawAttended,
    required this.resultStatus,
    required this.certificateStatus,
    required this.certificateTrackingNumber,
    required this.shippingMethod,
    required this.dispatchDates,
    required this.leftTheCourseResitStatusId,
  });

  final int id;
  final int retakeEventId;
  final DateTime retakeDateId;
  final int traineeId;
  final int orderCourseId;
  final int locationId;
  final String transactionId;
  final String retakeTest;
  final String retakeTestIsPaid;
  final String retakeTestPayment;
  final String retakeTestPaymentStatus;
  final DateTime retakeTestBookingDate;
  final String retakeTestResultDeclared;
  final String retakeTestPaymentAmount;
  final String retakeTestPaymentThrough;
  final String retakeTestPaymentDate;
  final dynamic attendanceStatus;
  final int efawAttended;
  final String resultStatus;
  final String certificateStatus;
  final String certificateTrackingNumber;
  final String shippingMethod;
  final String dispatchDates;
  final int leftTheCourseResitStatusId;

  factory Retake.fromMap(Map<String, dynamic> json) => Retake(
    id: json["id"],
    retakeEventId: json["retake_event_id"],
    retakeDateId: DateTime.parse(json["retake_date_id"]),
    traineeId: json["trainee_id"],
    orderCourseId: json["order_course_id"],
    locationId: json["location_id"],
    transactionId: json["transaction_id"],
    retakeTest: json["retake_test"],
    retakeTestIsPaid: json["retake_test_is_paid"],
    retakeTestPayment: json["retake_test_payment"],
    retakeTestPaymentStatus: json["retake_test_payment_status"],
    retakeTestBookingDate: DateTime.parse(json["retake_test_booking_date"]),
    retakeTestResultDeclared: json["retake_test_result_declared"],
    retakeTestPaymentAmount: json["retake_test_payment_amount"],
    retakeTestPaymentThrough: json["retake_test_payment_through"],
    retakeTestPaymentDate: json["retake_test_payment_date"],
    attendanceStatus: json["attendance_status"],
    efawAttended: json["efaw_attended"],
    resultStatus: json["result_status"],
    certificateStatus: json["certificate_status"],
    certificateTrackingNumber: json["certificate_tracking_number"],
    shippingMethod: json["shipping_method"],
    dispatchDates: json["dispatch_dates"],
    leftTheCourseResitStatusId: json["left_the_course_resit_status_id"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "retake_event_id": retakeEventId,
    "retake_date_id": "${retakeDateId.year.toString().padLeft(4, '0')}-${retakeDateId.month.toString().padLeft(2, '0')}-${retakeDateId.day.toString().padLeft(2, '0')}",
    "trainee_id": traineeId,
    "order_course_id": orderCourseId,
    "location_id": locationId,
    "transaction_id": transactionId,
    "retake_test": retakeTest,
    "retake_test_is_paid": retakeTestIsPaid,
    "retake_test_payment": retakeTestPayment,
    "retake_test_payment_status": retakeTestPaymentStatus,
    "retake_test_booking_date": "${retakeTestBookingDate.year.toString().padLeft(4, '0')}-${retakeTestBookingDate.month.toString().padLeft(2, '0')}-${retakeTestBookingDate.day.toString().padLeft(2, '0')}",
    "retake_test_result_declared": retakeTestResultDeclared,
    "retake_test_payment_amount": retakeTestPaymentAmount,
    "retake_test_payment_through": retakeTestPaymentThrough,
    "retake_test_payment_date": retakeTestPaymentDate,
    "attendance_status": attendanceStatus,
    "efaw_attended": efawAttended,
    "result_status": resultStatus,
    "certificate_status": certificateStatus,
    "certificate_tracking_number": certificateTrackingNumber,
    "shipping_method": shippingMethod,
    "dispatch_dates": dispatchDates,
    "left_the_course_resit_status_id": leftTheCourseResitStatusId,
  };
}

class DataVenue {
  DataVenue({
    required this.id,
    required this.venueName,
  });

  final int id;
  final String venueName;

  factory DataVenue.fromMap(Map<String, dynamic> json) => DataVenue(
    id: json["id"],
    venueName: json["venue_name"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "venue_name": venueName,
  };
}
