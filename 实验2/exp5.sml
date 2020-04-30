datatype tree = Empty | Node of tree * int * tree;

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

(* 以上为测试所需函数 *)

fun binarySearch(Empty, x) = false
    | binarySearch(Node(L, v, R), x) = 
      case Int.compare(x, v) of
        GREATER => binarySearch(R, x)
      | LESS => binarySearch(L, x)
      | EQUAL => true;

binarySearch(listToTree([1,2,3,4,5]), 5);
binarySearch(listToTree([1,2,3,4,5]), 6);