class Address {
  final String paymentNetwork;
  final String environment;
  final String addressDetailsType;
  final AddressDetails addressDetails;

  Address(this.paymentNetwork, this.environment, this.addressDetailsType, this.addressDetails);

  Address.fromJson(Map<String, dynamic> json)
      : paymentNetwork = json['paymentNetwork'],
        environment = json['environment'],
        addressDetailsType = json['addressDetailsType'],
        addressDetails = AddressDetails.fromJson(json['addressDetails']);

  Map<String, dynamic> toJson() => {
        'paymentNetwork': paymentNetwork,
        'environment': environment,
        'addressDetailsType': addressDetailsType,
        'addressDetails': addressDetails.toJson(),
      };
}

class AddressDetails {
  final String address;
  AddressDetails(this.address);

  AddressDetails.fromJson(Map<String, dynamic> json)
      : address = json['address'];

  Map<String, dynamic> toJson() => {
        'address': address,
      };
}