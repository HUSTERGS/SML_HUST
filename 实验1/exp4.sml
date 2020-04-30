(* mult' : int list * int -> int  *)
(* REQUIRES: true *)
(* ENSURES: mult'(L, a) 计算L中所有元素的乘积与a的乘积 *)
fun mult' ([], a) = a
    | mult' (x::L, a) = mult'(L, x*a);
fun Mult'([], a) = a
    | Mult'(r::R, a) = mult'(r, a) * Mult'(R, 1);

(* 测试 *)
Mult'([[1,2],[3,4],[5,6],[]], 4);
Mult'([[1,2,3],[4,5], []], 6);