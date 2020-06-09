import 'dart:math';

main(List<String> args) {

}

maxElement(List<int> a){
  
  var currentMax = a.isEmpty ? throw 'Maximal element undefined for empty array':a[0];
  for (var i = 0; i < a.length; i++) {
    currentMax = max(a[i], currentMax);
  }
  return currentMax;
}