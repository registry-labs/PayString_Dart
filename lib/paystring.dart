library paystring;

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:regexed_validator/regexed_validator.dart';
import 'package:paystring/src/models/address.dart';
import 'package:paystring/src/models/paystring.dart';

class PayString {
  Future<List<Address>> fetchAddresses(String value, String ledger, String network) async {
    Map<String, String> headers = {"Accept": "application/$ledger-$network+json", "PayID-Version": "1.0"};
    List<Address> addressList = [];
    final payString = value.split("\$");
    if (payString.length < 2) {
      throw ("Bad PayString");
    }
    if (validator.url('https://${payString[1]}') == false) {
      throw ("Bad PayString");
    }
    var url = Uri.parse('https://${payString[1]}/${payString.first}');
    var response = await http.get(url, headers: headers);
    // print(response.body);
    List<dynamic> data = json.decode(response.body)["addresses"];
    for (var obj in data) {
      Address address = Address.fromJson(obj);
      addressList.add(address);
    }
    return addressList;
  }

  parsePayString(String paystring) {
    PayStringDetails p = splitPayString(paystring);
    if (p.prefix.contains('/') || p.suffix.contains('/')) {
      throw Exception('A PayString string representation cannot include paths.');
    }
    parsePayStringUrl('https://${p.suffix}/${p.prefix}');
    return paystring.toLowerCase();
  }

  parsePayStringUrl(String paystringUrl) {
    var url = Uri.parse(paystringUrl);
    if (url.scheme != 'http' && url.scheme != 'https') {
      throw Exception('Invalid URL protocol: "${url.scheme}". PayString URLs must be HTTP/HTTPS.');
    }
    if (!url.host.contains('.')) {
      throw Exception('Hostname "${url.host}" is not a valid hostname. Needs a dot-separated TLD.');
    }
    return url;
  }

  PayStringDetails splitPayString(String paystring) {
    var lastDollarIndex = paystring.lastIndexOf('\$');
    var prefix = paystring.substring(0, lastDollarIndex);
    var domain = paystring.substring(lastDollarIndex + 1);
    if (lastDollarIndex == -1 || prefix.isEmpty || domain.isEmpty) {
      throw Exception('A PayString must have a user and a host, divided by a \$ (e.g. alice\$example.com).');
    }
    return PayStringDetails(paystring: paystring, prefix: prefix, suffix: domain);
  }
}
