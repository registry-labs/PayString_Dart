class PayStringDetails {
  final String prefix;
  final String suffix;
  final String paystring;

  PayStringDetails({
    required this.prefix,
    required this.suffix,
    required this.paystring,
  });

  PayStringDetails.fromJson(Map<String, dynamic> json)
      : prefix = json['prefix'],
        suffix = json['suffix'],
        paystring = json['paystring'];

  Map<String, dynamic> toJson() => {'prefix': prefix, 'suffix': suffix, 'paystring': paystring};
}
