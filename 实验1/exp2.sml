fun mult[] = 0
    | mult(x::L) = if L = [] then x else x * mult(L);

(* 测试 *)
mult([]);
mult([1,2,3]);
mult([0,1,2,4]);