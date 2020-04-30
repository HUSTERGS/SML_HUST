datatype tree = Empty | Node of tree * int * tree;
fun reverse([]) = []
    | reverse(x::L) = reverse(L)@[x];

fun splitHelper(L, x, R) = 
    if length(R) - length(L) > 1 then 
        let
          val y::R_new = R
        in
          splitHelper(L@[x], y, R_new)
        end
    else (L, x, R);

fun split(x::L) = splitHelper([], x, L);

fun listToTree([]) = Empty
    | listToTree(l) = 
    let
      val (L, x, R) = split(l)
    in
      Node(listToTree(L), x, listToTree(R))
    end;

fun trav(Empty) = [] 
    | trav(Node(L, v, R)) = trav(L)@v::trav(R);

(* 以上为测试所需函数 *)

fun revT(Empty) = Empty
    | revT(Node(L, v, R)) = Node(revT(R), v, revT(L));


val test = [1,2,3,4,5,6];
val t = listToTree(test);
trav(revT(t)) = reverse(trav(t));
