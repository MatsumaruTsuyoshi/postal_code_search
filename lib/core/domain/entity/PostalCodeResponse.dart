class PostalCodeResponse {
  PostalCodeResponse({
    required this.address1,
    required this.address2,
    required this.address3,
  });
  final String address1;
  final String address2;
  final String address3;

  factory PostalCodeResponse.fromJson(Map<String, dynamic> map) {
    return PostalCodeResponse(
      address1: map['address1'],
      address2: map['address2'],
      address3: map['address3'],
    );
  }
}
