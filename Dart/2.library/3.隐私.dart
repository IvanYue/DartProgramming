
/// 库是Dart的基础封装单元
/// 
/// 以_开头的成员都是私有库，
/// 
/// 隐私不应与安全混淆
/// Dart的隐私是为了支持软件工程的需要，而不是安全需求。
/// 唯一安全的边界在isolate之间，
/// 在同一个isolate之间，代码的安全性并没有得到保障。
/// 
/// 


class CachingClass {
  var _cache;  // CachingClass所在库之外的代码都无法访问这个_cache 字段。
  operator [](i){
    if (_cache[i] == null) {
      // _cache[i] = complicatedFunction(i);
    }
    return _cache[i];
  }
}