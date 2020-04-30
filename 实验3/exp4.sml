datatype 'a option = NONE | SOME of 'a;

fun findOdd([]) = NONE
    | findOdd(x::L) = if x mod 2 = 1 then SOME x else NONE;


(* 测试 *)
findOdd([]);
findOdd([1,2,3]);
findOdd([2,3,4]);