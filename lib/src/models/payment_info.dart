import 'address.dart';

class PaymentInformation {
  final List<Address> addresses;
  final String payId;
  final String memo;

  PaymentInformation({required this.addresses, required this.payId, required this.memo});

  PaymentInformation.fromJson(Map<String, dynamic> json)
      : addresses = json['addresses'],
        payId = json['payId'],
        memo = json['memo'];

  Map<String, dynamic> toJson() => {'addresses': addresses, 'payId': payId, 'memo': memo};
}
