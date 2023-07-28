enum AddressDetailsType {
  CryptoAddress,
  FiatAddress,
}

class CryptoAddressDetails {
  final String address;
  final String tag;

  CryptoAddressDetails({required this.address, required this.tag});

  CryptoAddressDetails.fromJson(Map<String, dynamic> json)
      : address = json['address'],
        tag = json['tag'];

  Map<String, dynamic> toJson() => {'address': address, 'tag': tag};
}

class FiatAddressDetails {
  final String accountNumber;
  final String routingNumber;

  FiatAddressDetails({required this.accountNumber, required this.routingNumber});

  FiatAddressDetails.fromJson(Map<String, dynamic> json)
      : accountNumber = json['accountNumber'],
        routingNumber = json['routingNumber'];

  Map<String, dynamic> toJson() => {'accountNumber': accountNumber, 'routingNumber': routingNumber};
}
