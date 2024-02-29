import 'dart:convert';

List<Taom> taomFromJson(String str) =>
    List<Taom>.from(json.decode(str).map((x) => Taom.fromJson(x)));

String taomToJson(List<Taom> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Taom {
  final String milliytaomlar;
  final String ichimliklar;
  final String shirinliklar;
  final String taomnarxi;
  final String ichimliknarxi;
  final String shirinliknarxi;
  final String milliytaomlarnarxi;

  Taom({
    required this.milliytaomlar,
    required this.ichimliklar,
    required this.shirinliklar,
    required this.taomnarxi,
    required this.ichimliknarxi,
    required this.shirinliknarxi,
    required this.milliytaomlarnarxi,
  });

  factory Taom.fromJson(Map<String, dynamic> json) => Taom(
        milliytaomlar: json["milliytaomlar"],
        ichimliklar: json["ichimliklar"],
        shirinliklar: json["shirinliklar"],
        taomnarxi: json["taomnarxi"],
        ichimliknarxi: json["ichimliknarxi"],
        shirinliknarxi: json["shirinliknarxi"],
        milliytaomlarnarxi: json["milliytaomlarnarxi"],
      );

  Map<String, dynamic> toJson() => {
        "milliytaomlar": milliytaomlar,
        "ichimliklar": ichimliklar,
        "shirinliklar": shirinliklar,
        "taomnarxi": taomnarxi,
        "ichimliknarxi": ichimliknarxi,
        "shirinliknarxi": shirinliknarxi,
        "milliytaomlarnarxi": milliytaomlarnarxi,
      };
}
