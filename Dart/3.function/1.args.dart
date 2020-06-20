/**
 * 参数
 * 位置参数
 * 命名参数
 * 
 * 参数列表：函数总有一个形式参数列表，列表可以是空，getter没有参数列表
 * 
 * 位置可选参数和命名参数只能同时使用一种
 */

///位置参数
class ArgumnetsClass {
  // zero() => 0; //没有参数的函数。从技术角度，他有0个参数
  get zero => 0; // 上面函数的另一个版本
  id(x) => x; //identity函数
  identity(x) {
    return x;
  } //一个更烦琐的identity函数

  add(a, b) => a + b; //有两个必填参数的函数
  // 可选参数，需要放在末尾，用方括号[args]包裹起来

  increment(x, [step = 1]) => x + step; //step是可选函数，默认值是1
  increment1(x, {step = 1}) => x + step;
}

///命名参数
///放在位置参数之后声明，并用大括号{args}包裹起来
///命名参数可以使用任意命名参数的组合来调用。
class NameArgumnetsClass {
  var street;
  var name;
  var number;
  var city;
  var zip;
  var country;
}

addressLetter({name: '', street: '', number, city, zip, country}) {
  var addr = NameArgumnetsClass();
  addr.street = street;
  addr.name = name;
  addr.number = number;
  addr.city = city;
  addr.zip = zip;
  addr.country = country;
  return addr;
}

//位置参数和命名参数混合使用
///
///通常作为出来程序的回调函数会通过命名参数来指定，其他形式参数则通过位置参数给出。
///

fail()=>throw{'key not found'};
locationArgsAndNameArgs(key,{ifMissing:fail}){
  if (key != null) {
    return 'found';
  }
  return ifMissing ==null ? throw'$key not found': fail();
}


main(List<String> args) {
  addressLetter(street:'Downing');
  addressLetter();
}