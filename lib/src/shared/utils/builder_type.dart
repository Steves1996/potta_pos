enum LoanAndReturnType {
  religion('Religion'),
  academique('Académique'),
  culturel('Culturel'),
  news('Nouveauté'),
  besSell('Meilleures ventes');

  final String value;
  const LoanAndReturnType(this.value);

  static LoanAndReturnType fromString(String value) {
    return LoanAndReturnType.values.firstWhere(
      (context) => context.value == value,
      orElse: () => LoanAndReturnType.besSell,
    );
  }

  @override
  String toString() => value;
}


enum BookingType {
  all('Tous'),
  validate('Valider'),
  rejected('Rejeter');

  final String value;
  const BookingType(this.value);

  static BookingType fromString(String value) {
    return BookingType.values.firstWhere(
      (context) => context.value == value,
      orElse: () => BookingType.rejected,
    );
  }

  @override
  String toString() => value;
}


enum DeliveryType {
  all('Toutes'),
  inWait('En attente'),
  prepare('Préparation'),
  deliver('Livrées'),
  confirm('Confirmées');

  final String value;
  const DeliveryType(this.value);

  static DeliveryType fromString(String value) {
    return DeliveryType.values.firstWhere(
      (context) => context.value == value,
      orElse: () => DeliveryType.confirm,
    );
  }

  @override
  String toString() => value;
}
