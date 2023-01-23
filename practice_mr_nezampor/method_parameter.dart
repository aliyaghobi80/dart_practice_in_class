String a() {
  String _val = 'a ${b()}';
  return _val;
}

String b() {
  String _val = 'b ${c()}';
  return _val;
}

String c() {
  String _val = 'c';
  return _val;
}

String positionalConcat(String name, String family) {
  return name + family;
}

String? positionalOptionalConcat(String name, [String? family]) {
   String? _result;
  if(family != null){
    _result=name+ family;
  }
  else {
    family ??= 'family is null';
  }
  return _result;
}
//in dart 2.10.0 required is not define

// String requiredPositionalConcat(required String name,required String family) {
//   return name + family;
// }
// String requiredNamedConcat({required String name,required String family}) {
//   return name + family;
// }
main() {
  print(a());
  String positionalCon = positionalConcat('ali','yaghobi');
  String? positionalOptionalCon = positionalOptionalConcat('ali',);

  print(positionalCon);
  print(positionalOptionalCon);
}
