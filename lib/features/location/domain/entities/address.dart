class AddressEntity {
  final double lat;
  final double long;
  final String displayName;
  final String postcode;

  AddressEntity({
    required this.lat,
    required this.long,
    required this.displayName,
    required this.postcode,
  });

  @override
  String toString() {
    if (postcode.isEmpty) {
      return displayName;
    }
    return '$displayName - $postcode';
  }
}
