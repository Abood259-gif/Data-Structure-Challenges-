
class node{
  int value ;
  node? ref ; 
  node({required this.value , this.ref});
  @override
  String toString() {
   if(ref == null)return '$value' ;
   else return "$value -> ${ref.toString()}" ;
  }
}
class linked_list {
  int size = 0 ;
  node? head ;
  node? tail ;
@override
  String toString() {
   if(head == null)return 'Empty list' ;
   else return head.toString() ;
  }
@override
bool get isEmpty => head == null;
void print_list(){
  var curren_node = head ; 
  while(curren_node != null){
print(curren_node.value) ;
curren_node = curren_node.ref ;
  }
}
  void push_front_node(int val){
    size++ ;
    head = node(value:val , ref:head) ;
    if(head?.ref == null)tail = head ; 
  }
  void push_back_node(int val){
    size++ ;
    if(head == null){
      head = node(value:val , ref:head) ;
      tail = head ;
      return ;
    }
    tail!.ref = node(value:val) ;
    tail = tail!.ref ;
  }

  void insert_in_middle(val , int index){
    size++ ;
node current_node = head! ;
int current_index = 1 ;
while(head!=null && current_index != index){
  current_node = current_node.ref! ;
  current_index++ ;
}
if(tail == head)push_back_node(val) ;
else{
  current_node.ref = node(value: val , ref: current_node.ref) ;
}
  }
void pop_front(){
  if(head!=null){
    head = head!.ref ;
  }
}
void print_list_revers(){
    linked_list revers_list = linked_list() ;
    var current_node = head ;
    while(current_node != null){
      revers_list.push_front_node(current_node.value) ;
      current_node = current_node.ref ;
    }
   var rev_cur_node = revers_list.head ;
   while(rev_cur_node != null){
    print(rev_cur_node.value) ;
    rev_cur_node = rev_cur_node.ref ;
   }
  }

void find_the_mid(){
  var current_node = head ;
  for(int i = 0 ; i < size~/2 ; i++ )current_node = current_node!.ref! ;
  print(current_node!.value) ;
}

void rev_linked_list(){
  if(head == null || head == tail) return;
  node? prev = null;  
  node? current = head ;
  node? next = null ;
  while(current != null){
    next = current.ref ;
    current.ref = prev ; 
    prev = current ; 
    current = next ; 
  }
  head = prev ;
}

node? removeAllOccurrences(node? head, int value) {
  while (head != null && head.value == value) {
    head = head.ref;
  }

  // 2. استخدم مؤشر للتجول بالقائمة
  node? current = head;

  while (current != null && current.ref != null) {
    if (current.ref!.value == value) {
      current.ref = current.ref!.ref; // احذف العنصر
    } else {
      current = current.ref; // روح للعنصر اللي بعده
    }
  }

  return head;
}


void pop_back(){
if(head != null){
node current_node = head! ;
  if(tail == head){head = null ; tail = null ;}
  else{
   bool check = false ;
   while(check == false){
if(current_node.ref == tail){current_node.ref = null ; tail = current_node ; check = true ;}
else current_node = current_node.ref! ;
   } 
  }
}
}
}
void main(){
linked_list list = linked_list() ; 
list.push_back_node(1) ; 
list.push_back_node(3) ;
list.push_back_node(3) ;
list.push_back_node(4) ;
print(list) ;
}
