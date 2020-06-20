/**
 * 延迟加载
 * 有时需要推迟库得加载
 * 1.为了使应用快速启动且保持初始下载量尽可能小。
 * 2.在拥有诸多功能的大型应用中，因为某些特性不被用户所使用，所以实现相应功能的库也不总是需要的。
 * 不加载不会使用的库有助于减少内存的使用。 
 */

import '4.import.dart' deferred as rarelyUsed;

main(List<String> args) {
  /// loadLibrary 是异步调用
  /// 启动了库得加载，但是不等于库加载完毕。
  /// 返回一个future，它时某个值的占位符，且该值在一段时间后才可用。
  /// 在库加载完毕之前，我们要避免rarelyUsed的访问。
  rarelyUsed.loadLibrary().then(onLoad);
}

onLoad(loadSuccessed){
  // 加载完成后才会执行
  loadSuccessed?print(1):print(2);
}























































