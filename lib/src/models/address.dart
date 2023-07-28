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

  AddressDetails.fromJson(Map<String, dynamic> json) : address = json['address'];

  Map<String, dynamic> toJson() => {
        'address': address,
      };
}



// class Address {
//   final String paymentNetwork;
//   final String environment;
//   final AddressDetailsType addressDetailsType;
//   final CryptoAddressDetails cryptoAddressDetails;
//   final FiatAddressDetails fiatAddressDetails;

//   Address({
//     required this.paymentNetwork,
//     required this.environment,
//     required this.addressDetailsType,
//     required this.cryptoAddressDetails,
//     required this.fiatAddressDetails,
//   });

//   Address.fromJson(Map<String, dynamic> json)
//       : paymentNetwork = json['paymentNetwork'],
//         environment = json['environment'],
//         addressDetailsType = json['addressDetailsType'],
//         cryptoAddressDetails = CryptoAddressDetails.fromJson(json['cryptoAddressDetails']),
//         fiatAddressDetails = FiatAddressDetails.fromJson(json['fiatAddressDetails']);

//   Map<String, dynamic> toJson() => {
//         'paymentNetwork': paymentNetwork,
//         'environment': environment,
//         'addressDetailsType': addressDetailsType,
//         'cryptoAddressDetails': cryptoAddressDetails.toJson(),
//         'fiatAddressDetails': fiatAddressDetails.toJson(),
//       };
// }

