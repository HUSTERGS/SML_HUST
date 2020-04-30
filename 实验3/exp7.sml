datatype 'a tree = Empty | Node of 'a tree * 'a * 'a tree;
datatype 'a option = NONE | SOME of 'a;

fun treeFilter(P) = 
let
  fun filterHelper(Empty) = Empty
    | filterHelper(Node(L, v, R)) = 
    if P(v) then Node(filterHelper(L), SOME v, filterHelper(R))
    else Node(filterHelper(L), NONE, filterHelper(R))
in
  filterHelper
end;


(* 以下为测试 *)
(* 遍历函数 *)
fun trav(Empty) = [] 
    | trav(Node(L, v, R)) = trav(L)@v::trav(R);
(* 判断是否是偶数 *)

fun testP(x) = x mod 2 = 0;

val C = Node(Node(Empty, 2, Empty), 1, Node(Empty, 2, Empty));
trav(treeFilter(testP) C);