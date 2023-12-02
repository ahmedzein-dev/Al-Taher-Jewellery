class GoldModel {
  final String karat18;
  final String karat21;
  final String karat24;

  const GoldModel({
    required this.karat18,
    required this.karat21,
    required this.karat24,
  });

  factory GoldModel.fromJson(Map json) {
    return GoldModel(
      karat18: json['karat18'],
      karat21: json['karat21'],
      karat24: json['karat24'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'karat18': karat18,
      'karat21': karat21,
      'karat24': karat24,
    };
  }

  static GoldModel modelFromSnapShot(Map snapShot) {
    return GoldModel.fromJson(snapShot);
  }
}
