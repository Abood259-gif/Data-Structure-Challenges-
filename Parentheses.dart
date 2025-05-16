import 'dart:io';
bool isBalanced(String input) {
  List<String> stack = [];

  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    if (char == '(') {
      stack.add(char); // push
    } else if (char == ')') {
      if (stack.isEmpty) {
        return false; 
      }
      stack.removeLast(); // pop
    }
  }
  return stack.isEmpty;
}



void main(){
String inp = stdin.readLineSync()! ;
if(isBalanced(inp))print("balanced parentheses") ;
else print("unbalanced parentheses") ;
}