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

split([1,2,3,4,5,6]);
split([1,2,3,4,5]);
split([1,2,3,4]);
split([1,2,3]);
split([1,2]);
split([1]);


listToTree([1,2,3,4,5,6]);
listToTree([1,2,3,4,5]);
listToTree([1,2,3,4]);
listToTree([1,2,3]);
listToTree([1,2]);
listToTree([1]);
