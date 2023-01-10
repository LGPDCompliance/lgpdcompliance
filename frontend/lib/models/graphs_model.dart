import 'dart:convert';

class GraphicsModel {
  List<WeekAmount> weekAmount;
  List<AmountEachTrack> amountEachTrack;

  GraphicsModel({required this.weekAmount, required this.amountEachTrack});

  factory GraphicsModel.fromJson(String str) =>
      GraphicsModel.fromMap(json.decode(str));

  factory GraphicsModel.fromMap(Map<String, dynamic> json) {
    return GraphicsModel(
      weekAmount: List<WeekAmount>.from(
          json["weekAmount"].map((x) => WeekAmount.fromMap(x))),
      amountEachTrack: List<AmountEachTrack>.from(
          json["amountEachTrack"].map((x) => AmountEachTrack.fromMap(x))),
    );
  }
}

class WeekAmount {
  String writingDay;
  int day;
  int amount;

  WeekAmount({
    required this.writingDay,
    required this.day,
    required this.amount,
  });

  factory WeekAmount.fromJson(String str) =>
      WeekAmount.fromMap(json.decode(str));

  factory WeekAmount.fromMap(Map<String, dynamic> json) {
    return WeekAmount(
      writingDay: json["writingDay"],
      day: json["day"],
      amount: json["amount"],
    );
  }
}

class AmountEachTrack {
  int track;
  int amount;
  String description;

  AmountEachTrack({
    required this.track,
    required this.amount,
    required this.description,
  });

  factory AmountEachTrack.fromJson(String str) =>
      AmountEachTrack.fromMap(json.decode(str));

  factory AmountEachTrack.fromMap(Map<String, dynamic> json) {
    return AmountEachTrack(
      track: json["track"],
      amount: json["amount"],
      description: json["description"],
    );
  }
}
