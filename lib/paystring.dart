library paystring;

import 'package:paystring/models/address.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:regexed_validator/regexed_validator.dart';

class PayString {
  Future<List<Address>> fetchAddresses(String value,String ledger, String network) async {
    Map<String, String> headers = {
      "Accept" : "application/$ledger-$network+json",
      "PayID-Version" : "1.0"
    };
    List<Address> addressList = [];
    final payString = value.split("\$");
    if(payString.length < 2){
      throw("Bad PayString");
    }
    if(validator.url('https://${payString[1]}') == false) {
      throw("Bad PayString");
    }
    var url = Uri.parse('https://${payString[1]}/${payString.first}');
    var response = await http.get(url, headers: headers);
    print(response.body);
    List<dynamic> data = json.decode(response.body)["addresses"];
    for(var obj in data) {
      Address address = Address.fromJson(obj);
      addressList.add(address);
    }
    return addressList;
  }
}
