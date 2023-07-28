// coverage:ignore-file
// ignore_for_file: type=lint, unnecessary_null_comparison, unnecessary_non_null_assertion, unused_field
// ======================================
// GENERATED CODE - DO NOT MODIFY BY HAND
// ======================================

// import 'dart:async';
// import 'package:agent_dart/agent_dart.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

// class TheRegistryIDLActor {
//   const TheRegistryIDLActor._();

//   /// ```Candid
//   ///   add: (text, Address) -> ()
//   /// ```
//   static Future<void> add(
//     CanisterActor actor,
//     AddArg arg,
//   ) async {
//     final request = arg.toJson();
//     const method = 'add';
//     await actor.getFunc(method)!(request);
//   }

//   /// ```Candid
//   ///   auction: (text) -> (nat32)
//   /// ```
//   static Future<int> auction(
//     CanisterActor actor,
//     String arg,
//   ) async {
//     final request = [arg];
//     const method = 'auction';
//     final response = await actor.getFunc(method)!(request);
//     return response;
//   }

//   /// ```Candid
//   ///   delete: (text, Address) -> ()
//   /// ```
//   static Future<void> delete(
//     CanisterActor actor,
//     DeleteArg arg,
//   ) async {
//     final request = arg.toJson();
//     const method = 'delete';
//     await actor.getFunc(method)!(request);
//   }

//   /// ```Candid
//   ///   deleteAll: (text) -> ()
//   /// ```
//   static Future<void> deleteAll(
//     CanisterActor actor,
//     String arg,
//   ) async {
//     final request = [arg];
//     const method = 'deleteAll';
//     await actor.getFunc(method)!(request);
//   }

//   /// ```Candid
//   ///   getCounter: () -> (nat) query
//   /// ```
//   static Future<BigInt> getCounter(
//     CanisterActor actor,
//   ) async {
//     const request = [];
//     const method = 'getCounter';
//     final response = await actor.getFunc(method)!(request);
//     return response is BigInt ? response : BigInt.from(response);
//   }

//   /// ```Candid
//   ///   getPayId: (text, text, opt text) -> (vec Address) query
//   /// ```
//   static Future<List<Address>> getPayId(
//     CanisterActor actor,
//     GetPayIdArg arg,
//   ) async {
//     final request = arg.toJson();
//     const method = 'getPayId';
//     final response = await actor.getFunc(method)!(request);
//     return (response as List).map((e) {
//       return Address.fromJson(e);
//     }).toList();
//   }

//   /// ```Candid
//   ///   getPayIdCount: () -> (nat32) query
//   /// ```
//   static Future<int> getPayIdCount(
//     CanisterActor actor,
//   ) async {
//     const request = [];
//     const method = 'getPayIdCount';
//     final response = await actor.getFunc(method)!(request);
//     return response;
//   }

//   /// ```Candid
//   ///   getPrice: (text) -> (nat) query
//   /// ```
//   static Future<BigInt> getPrice(
//     CanisterActor actor,
//     String arg,
//   ) async {
//     final request = [arg];
//     const method = 'getPrice';
//     final response = await actor.getFunc(method)!(request);
//     return response is BigInt ? response : BigInt.from(response);
//   }

//   /// ```Candid
//   ///   payStringExist: (text) -> (bool) query
//   /// ```
//   static Future<bool> payStringExist(
//     CanisterActor actor,
//     String arg,
//   ) async {
//     final request = [arg];
//     const method = 'payStringExist';
//     final response = await actor.getFunc(method)!(request);
//     return response;
//   }

//   /// ```Candid
//   ///   setPrice: (nat32, nat) -> ()
//   /// ```
//   static Future<void> setPrice(
//     CanisterActor actor,
//     SetPriceArg arg,
//   ) async {
//     final request = arg.toJson();
//     const method = 'setPrice';
//     await actor.getFunc(method)!(request);
//   }
// }

// class TheRegistryIDL {
//   const TheRegistryIDL._();

//   /// [_Token] defined in Candid
//   /// ```Candid
//   ///   type Token = record { arbitrary_data: text };
//   /// ```
//   static final RecordClass _Token = IDL.Record({
//     'arbitrary_data': IDL.Text,
//   });

//   /// [_FiatAddressDetails] defined in Candid
//   /// ```Candid
//   ///   type FiatAddressDetails = record { accountNumber: text; routingNumber: opt text };
//   /// ```
//   static final RecordClass _FiatAddressDetails = IDL.Record({
//     'accountNumber': IDL.Text,
//     'routingNumber': IDL.Opt(
//       IDL.Text,
//     ),
//   });

//   /// [_CryptoAddressDetails] defined in Candid
//   /// ```Candid
//   ///   type CryptoAddressDetails = record { address: text; tag: opt text };
//   /// ```
//   static final RecordClass _CryptoAddressDetails = IDL.Record({
//     'address': IDL.Text,
//     'tag': IDL.Opt(
//       IDL.Text,
//     ),
//   });

//   /// [_AddressDetailsType] defined in Candid
//   /// ```Candid
//   ///   type AddressDetailsType = variant { CryptoAddress; FiatAddress };
//   /// ```
//   static final VariantClass _AddressDetailsType = IDL.Variant({
//     'CryptoAddress': IDL.Null,
//     'FiatAddress': IDL.Null,
//   });

//   /// [_AddressDetails] defined in Candid
//   /// ```Candid
//   ///   type AddressDetails = variant { CryptoAddressDetails: CryptoAddressDetails; FiatAddressDetails: FiatAddressDetails };
//   /// ```
//   static final VariantClass _AddressDetails = IDL.Variant({
//     'CryptoAddressDetails': _CryptoAddressDetails,
//     'FiatAddressDetails': _FiatAddressDetails,
//   });

//   /// [_Address] defined in Candid
//   /// ```Candid
//   ///   type Address = record { addressDetails: AddressDetails; addressDetailsType: AddressDetailsType; environment: opt text; paymentNetwork: text };
//   /// ```
//   static final RecordClass _Address = IDL.Record({
//     'addressDetails': _AddressDetails,
//     'addressDetailsType': _AddressDetailsType,
//     'environment': IDL.Opt(
//       IDL.Text,
//     ),
//     'paymentNetwork': IDL.Text,
//   });

//   static final ServiceClass idl = IDL.Service({
//     'add': IDL.Func(
//       [IDL.Text, _Address],
//       [],
//       [],
//     ),
//     'auction': IDL.Func(
//       [IDL.Text],
//       [IDL.Nat32],
//       [],
//     ),
//     'delete': IDL.Func(
//       [IDL.Text, _Address],
//       [],
//       [],
//     ),
//     'deleteAll': IDL.Func(
//       [IDL.Text],
//       [],
//       [],
//     ),
//     'getCounter': IDL.Func(
//       [],
//       [IDL.Nat],
//       ['query'],
//     ),
//     'getPayId': IDL.Func(
//       [
//         IDL.Text,
//         IDL.Text,
//         IDL.Opt(
//           IDL.Text,
//         )
//       ],
//       [
//         IDL.Vec(
//           _Address,
//         )
//       ],
//       ['query'],
//     ),
//     'getPayIdCount': IDL.Func(
//       [],
//       [IDL.Nat32],
//       ['query'],
//     ),
//     'getPrice': IDL.Func(
//       [IDL.Text],
//       [IDL.Nat],
//       ['query'],
//     ),
//     'payStringExist': IDL.Func(
//       [IDL.Text],
//       [IDL.Bool],
//       ['query'],
//     ),
//     'setPrice': IDL.Func(
//       [IDL.Nat32, IDL.Nat],
//       [],
//       [],
//     ),
//   });
// }

/// [Token] defined in Candid
/// ```Candid
///   record { arbitrary_data: text }
/// ```
@immutable
class Token {
  const Token(
      {
      /// [arbitraryData] defined in Candid: `arbitrary_data: text`
      required this.arbitraryData});

  factory Token.fromJson(Map json) {
    return Token(
      arbitraryData: json['arbitrary_data'],
    );
  }

  /// [arbitraryData] defined in Candid: `arbitrary_data: text`
  final String arbitraryData;

  Map<String, dynamic> toJson() {
    final arbitraryData = this.arbitraryData;
    return {
      'arbitrary_data': arbitraryData,
    };
  }

  Token copyWith(
      {
      /// [arbitraryData] defined in Candid: `arbitrary_data: text`
      String? arbitraryData}) {
    return Token(
      arbitraryData: arbitraryData ?? this.arbitraryData,
    );
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Token &&
            (identical(other.arbitraryData, arbitraryData) || other.arbitraryData == arbitraryData));
  }

  @override
  int get hashCode => Object.hashAll([runtimeType, arbitraryData]);
  @override
  String toString() {
    return toJson().toString();
  }
}

/// [FiatAddressDetails] defined in Candid
/// ```Candid
///   record { accountNumber: text; routingNumber: opt text }
/// ```
@immutable
class FiatAddressDetails {
  const FiatAddressDetails({
    /// [accountNumber] defined in Candid: `accountNumber: text`
    required this.accountNumber,

    /// [routingNumber] defined in Candid: `routingNumber: opt text`
    this.routingNumber,
  });

  factory FiatAddressDetails.fromJson(Map json) {
    return FiatAddressDetails(
      accountNumber: json['accountNumber'],
      routingNumber: (json['routingNumber'] as List).map((e) {
        return e;
      }).firstOrNull,
    );
  }

  /// [accountNumber] defined in Candid: `accountNumber: text`
  final String accountNumber;

  /// [routingNumber] defined in Candid: `routingNumber: opt text`
  final String? routingNumber;

  Map<String, dynamic> toJson() {
    final accountNumber = this.accountNumber;
    final routingNumber = this.routingNumber;
    return {
      'accountNumber': accountNumber,
      'routingNumber': [if (routingNumber != null) routingNumber],
    };
  }

  FiatAddressDetails copyWith({
    /// [accountNumber] defined in Candid: `accountNumber: text`
    String? accountNumber,

    /// [routingNumber] defined in Candid: `routingNumber: opt text`
    String? routingNumber,
  }) {
    return FiatAddressDetails(
      accountNumber: accountNumber ?? this.accountNumber,
      routingNumber: routingNumber ?? this.routingNumber,
    );
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FiatAddressDetails &&
            (identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber) &&
            (identical(other.routingNumber, routingNumber) || other.routingNumber == routingNumber));
  }

  @override
  int get hashCode => Object.hashAll([runtimeType, accountNumber, routingNumber]);
  @override
  String toString() {
    return toJson().toString();
  }
}

/// [CryptoAddressDetails] defined in Candid
/// ```Candid
///   record { address: text; tag: opt text }
/// ```
@immutable
class CryptoAddressDetails {
  const CryptoAddressDetails({
    /// [address] defined in Candid: `address: text`
    required this.address,

    /// [tag] defined in Candid: `tag: opt text`
    this.tag,
  });

  factory CryptoAddressDetails.fromJson(Map json) {
    return CryptoAddressDetails(
      address: json['address'],
      tag: (json['tag'] as List).map((e) {
        return e;
      }).firstOrNull,
    );
  }

  /// [address] defined in Candid: `address: text`
  final String address;

  /// [tag] defined in Candid: `tag: opt text`
  final String? tag;

  Map<String, dynamic> toJson() {
    final address = this.address;
    final tag = this.tag;
    return {
      'address': address,
      'tag': [if (tag != null) tag],
    };
  }

  CryptoAddressDetails copyWith({
    /// [address] defined in Candid: `address: text`
    String? address,

    /// [tag] defined in Candid: `tag: opt text`
    String? tag,
  }) {
    return CryptoAddressDetails(
      address: address ?? this.address,
      tag: tag ?? this.tag,
    );
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CryptoAddressDetails &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hashAll([runtimeType, address, tag]);
  @override
  String toString() {
    return toJson().toString();
  }
}

/// [AddressDetailsType] defined in Candid
/// ```Candid
///   variant { CryptoAddress; FiatAddress }
/// ```
enum AddressDetailsType {
  /// [cryptoAddress] defined in Candid: `CryptoAddress`
  cryptoAddress('CryptoAddress'),

  /// [fiatAddress] defined in Candid: `FiatAddress`
  fiatAddress('FiatAddress');

  const AddressDetailsType(this.name);

  factory AddressDetailsType.fromJson(Map json) {
    final key = json.keys.first;
    return AddressDetailsType.values.firstWhere((e) => e.name == key);
  }

  final String name;

  bool get isCryptoAddress => this == AddressDetailsType.cryptoAddress;
  bool get isFiatAddress => this == AddressDetailsType.fiatAddress;
  Map<String, dynamic> toJson() {
    return {name: null};
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

/// [AddressDetails] defined in Candid
/// ```Candid
///   variant { CryptoAddressDetails: CryptoAddressDetails; FiatAddressDetails: FiatAddressDetails }
/// ```
@immutable
class AddressDetails {
  const AddressDetails({
    /// [cryptoAddressDetails] defined in Candid: `CryptoAddressDetails: CryptoAddressDetails`
    this.cryptoAddressDetails,

    /// [fiatAddressDetails] defined in Candid: `FiatAddressDetails: FiatAddressDetails`
    this.fiatAddressDetails,
  });

  factory AddressDetails.fromJson(Map json) {
    return AddressDetails(
      cryptoAddressDetails:
          json['CryptoAddressDetails'] == null ? null : CryptoAddressDetails.fromJson(json['CryptoAddressDetails']),
      fiatAddressDetails: json['FiatAddressDetails'] == null ? null : FiatAddressDetails.fromJson(json['FiatAddressDetails']),
    );
  }

  /// [cryptoAddressDetails] defined in Candid: `CryptoAddressDetails: CryptoAddressDetails`
  final CryptoAddressDetails? cryptoAddressDetails;

  /// [fiatAddressDetails] defined in Candid: `FiatAddressDetails: FiatAddressDetails`
  final FiatAddressDetails? fiatAddressDetails;

  Map<String, dynamic> toJson() {
    final cryptoAddressDetails = this.cryptoAddressDetails;
    final fiatAddressDetails = this.fiatAddressDetails;
    return {
      if (cryptoAddressDetails != null) 'CryptoAddressDetails': cryptoAddressDetails,
      if (fiatAddressDetails != null) 'FiatAddressDetails': fiatAddressDetails,
    };
  }

  AddressDetails copyWith({
    /// [cryptoAddressDetails] defined in Candid: `CryptoAddressDetails: CryptoAddressDetails`
    CryptoAddressDetails? cryptoAddressDetails,

    /// [fiatAddressDetails] defined in Candid: `FiatAddressDetails: FiatAddressDetails`
    FiatAddressDetails? fiatAddressDetails,
  }) {
    return AddressDetails(
      cryptoAddressDetails: cryptoAddressDetails ?? this.cryptoAddressDetails,
      fiatAddressDetails: fiatAddressDetails ?? this.fiatAddressDetails,
    );
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddressDetails &&
            (identical(other.cryptoAddressDetails, cryptoAddressDetails) || other.cryptoAddressDetails == cryptoAddressDetails) &&
            (identical(other.fiatAddressDetails, fiatAddressDetails) || other.fiatAddressDetails == fiatAddressDetails));
  }

  @override
  int get hashCode => Object.hashAll([runtimeType, cryptoAddressDetails, fiatAddressDetails]);
  @override
  String toString() {
    return toJson().toString();
  }
}

/// [Address] defined in Candid
/// ```Candid
///   record { addressDetails: AddressDetails; addressDetailsType: AddressDetailsType; environment: opt text; paymentNetwork: text }
/// ```
@immutable
class Address {
  const Address({
    /// [addressDetails] defined in Candid: `addressDetails: AddressDetails`
    required this.addressDetails,

    /// [addressDetailsType] defined in Candid: `addressDetailsType: AddressDetailsType`
    required this.addressDetailsType,

    /// [environment] defined in Candid: `environment: opt text`
    this.environment,

    /// [paymentNetwork] defined in Candid: `paymentNetwork: text`
    required this.paymentNetwork,
  });

  factory Address.fromJson(Map json) {
    return Address(
      addressDetails: AddressDetails.fromJson(json['addressDetails']),
      addressDetailsType: AddressDetailsType.fromJson(json['addressDetailsType']),
      environment: (json['environment'] as List).map((e) {
        return e;
      }).firstOrNull,
      paymentNetwork: json['paymentNetwork'],
    );
  }

  /// [addressDetails] defined in Candid: `addressDetails: AddressDetails`
  final AddressDetails addressDetails;

  /// [addressDetailsType] defined in Candid: `addressDetailsType: AddressDetailsType`
  final AddressDetailsType addressDetailsType;

  /// [environment] defined in Candid: `environment: opt text`
  final String? environment;

  /// [paymentNetwork] defined in Candid: `paymentNetwork: text`
  final String paymentNetwork;

  Map<String, dynamic> toJson() {
    final addressDetails = this.addressDetails;
    final addressDetailsType = this.addressDetailsType;
    final environment = this.environment;
    final paymentNetwork = this.paymentNetwork;
    return {
      'addressDetails': addressDetails,
      'addressDetailsType': addressDetailsType,
      'environment': [if (environment != null) environment],
      'paymentNetwork': paymentNetwork,
    };
  }

  Address copyWith({
    /// [addressDetails] defined in Candid: `addressDetails: AddressDetails`
    AddressDetails? addressDetails,

    /// [addressDetailsType] defined in Candid: `addressDetailsType: AddressDetailsType`
    AddressDetailsType? addressDetailsType,

    /// [environment] defined in Candid: `environment: opt text`
    String? environment,

    /// [paymentNetwork] defined in Candid: `paymentNetwork: text`
    String? paymentNetwork,
  }) {
    return Address(
      addressDetails: addressDetails ?? this.addressDetails,
      addressDetailsType: addressDetailsType ?? this.addressDetailsType,
      environment: environment ?? this.environment,
      paymentNetwork: paymentNetwork ?? this.paymentNetwork,
    );
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Address &&
            (identical(other.addressDetails, addressDetails) || other.addressDetails == addressDetails) &&
            (identical(other.addressDetailsType, addressDetailsType) || other.addressDetailsType == addressDetailsType) &&
            (identical(other.environment, environment) || other.environment == environment) &&
            (identical(other.paymentNetwork, paymentNetwork) || other.paymentNetwork == paymentNetwork));
  }

  @override
  int get hashCode => Object.hashAll([runtimeType, addressDetails, addressDetailsType, environment, paymentNetwork]);
  @override
  String toString() {
    return toJson().toString();
  }
}

/// [AddArg] defined in Candid
/// ```Candid
///   (text, Address)
/// ```
@immutable
class AddArg {
  const AddArg(
    this.item1,
    this.item2,
  );

  factory AddArg.fromJson(List<dynamic> tuple) {
    return AddArg(
      tuple[0],
      Address.fromJson(tuple[1]),
    );
  }

  /// [item1] defined in Candid: `text`
  final String item1;

  /// [item2] defined in Candid: `Address`
  final Address item2;

  List<dynamic> toJson() {
    final item1 = this.item1;
    final item2 = this.item2;
    return [
      item1,
      item2,
    ];
  }

  AddArg copyWith({
    /// [item1] defined in Candid: `text`
    String? item1,

    /// [item2] defined in Candid: `Address`
    Address? item2,
  }) {
    return AddArg(
      item1 ?? this.item1,
      item2 ?? this.item2,
    );
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddArg &&
            (identical(other.item1, item1) || other.item1 == item1) &&
            (identical(other.item2, item2) || other.item2 == item2));
  }

  @override
  int get hashCode => Object.hashAll([runtimeType, item1, item2]);
  @override
  String toString() {
    return toJson().toString();
  }
}

/// [DeleteArg] defined in Candid
/// ```Candid
///   (text, Address)
/// ```
@immutable
class DeleteArg {
  const DeleteArg(
    this.item1,
    this.item2,
  );

  factory DeleteArg.fromJson(List<dynamic> tuple) {
    return DeleteArg(
      tuple[0],
      Address.fromJson(tuple[1]),
    );
  }

  /// [item1] defined in Candid: `text`
  final String item1;

  /// [item2] defined in Candid: `Address`
  final Address item2;

  List<dynamic> toJson() {
    final item1 = this.item1;
    final item2 = this.item2;
    return [
      item1,
      item2,
    ];
  }

  DeleteArg copyWith({
    /// [item1] defined in Candid: `text`
    String? item1,

    /// [item2] defined in Candid: `Address`
    Address? item2,
  }) {
    return DeleteArg(
      item1 ?? this.item1,
      item2 ?? this.item2,
    );
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteArg &&
            (identical(other.item1, item1) || other.item1 == item1) &&
            (identical(other.item2, item2) || other.item2 == item2));
  }

  @override
  int get hashCode => Object.hashAll([runtimeType, item1, item2]);
  @override
  String toString() {
    return toJson().toString();
  }
}

/// [GetPayIdArg] defined in Candid
/// ```Candid
///   (text, text, opt text)
/// ```
@immutable
class GetPayIdArg {
  const GetPayIdArg(
    this.item1,
    this.item2,
    this.item3,
  );

  factory GetPayIdArg.fromJson(List<dynamic> tuple) {
    return GetPayIdArg(
      tuple[0],
      tuple[1],
      (tuple[2] as List).map((e) {
        return e;
      }).firstOrNull,
    );
  }

  /// [item1] defined in Candid: `text`
  final String item1;

  /// [item2] defined in Candid: `text`
  final String item2;

  /// [item3] defined in Candid: `opt text`
  final String? item3;

  List<dynamic> toJson() {
    final item1 = this.item1;
    final item2 = this.item2;
    final item3 = this.item3;
    return [
      item1,
      item2,
      [if (item3 != null) item3],
    ];
  }

  GetPayIdArg copyWith({
    /// [item1] defined in Candid: `text`
    String? item1,

    /// [item2] defined in Candid: `text`
    String? item2,

    /// [item3] defined in Candid: `opt text`
    String? item3,
  }) {
    return GetPayIdArg(
      item1 ?? this.item1,
      item2 ?? this.item2,
      item3 ?? this.item3,
    );
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPayIdArg &&
            (identical(other.item1, item1) || other.item1 == item1) &&
            (identical(other.item2, item2) || other.item2 == item2) &&
            (identical(other.item3, item3) || other.item3 == item3));
  }

  @override
  int get hashCode => Object.hashAll([runtimeType, item1, item2, item3]);
  @override
  String toString() {
    return toJson().toString();
  }
}

/// [SetPriceArg] defined in Candid
/// ```Candid
///   (nat32, nat)
/// ```
@immutable
class SetPriceArg {
  const SetPriceArg(
    this.item1,
    this.item2,
  );

  factory SetPriceArg.fromJson(List<dynamic> tuple) {
    return SetPriceArg(
      tuple[0],
      tuple[1] is BigInt ? tuple[1] : BigInt.from(tuple[1]),
    );
  }

  /// [item1] defined in Candid: `nat32`
  final int item1;

  /// [item2] defined in Candid: `nat`
  final BigInt item2;

  List<dynamic> toJson() {
    final item1 = this.item1;
    final item2 = this.item2;
    return [
      item1,
      item2,
    ];
  }

  SetPriceArg copyWith({
    /// [item1] defined in Candid: `nat32`
    int? item1,

    /// [item2] defined in Candid: `nat`
    BigInt? item2,
  }) {
    return SetPriceArg(
      item1 ?? this.item1,
      item2 ?? this.item2,
    );
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetPriceArg &&
            (identical(other.item1, item1) || other.item1 == item1) &&
            (identical(other.item2, item2) || other.item2 == item2));
  }

  @override
  int get hashCode => Object.hashAll([runtimeType, item1, item2]);
  @override
  String toString() {
    return toJson().toString();
  }
}
