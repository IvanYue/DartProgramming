library stack3;
class Stack3{
  List _contents =[];
  get isEmpty => _contents.isEmpty;
  get top => isEmpty?throw'Cannot get top of empty stack':_contents.last;

  get pop=> isEmpty?throw 'Cannot pop empty stack':_contents.removeLast();
  push(e){
    _contents.add(e);
    return e;
  }


}

  clone(Stack3 s){
    Stack3 ns = Stack3();
    ns._contents = List.from(s._contents);
    return ns;
  }