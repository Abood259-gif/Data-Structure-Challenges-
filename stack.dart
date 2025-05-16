
class Stack{
  List<int> stack = [] ;
  int size = 0 ;
  @override
String toString() {
  return '--- Top ---\n'
      '${stack.reversed.join('\n')}'
      '\n-----------';
}

  void push(int val){
    stack.add(val) ;
    size++ ;
  }
  void pop(){
    if(size == 0)return ;
    stack.removeLast() ;
    size-- ;
  }
  int top(){
    if(size == 0)return -1 ;
    return stack[size - 1] ;
  }
  bool isEmpty(){
    return size == 0 ;
  }
  void print_rev(){
    for(int i = 0 ; i < size ; i++){
      print(stack[i]) ;
    }
  }
  
}
void main(){
Stack my_stack = Stack() ;
my_stack.push(1) ;
my_stack.push(2) ;
my_stack.push(3) ;
my_stack.print_rev();
}