fun mult[] = 0
    | mult(x::L) = if L = [] then x else x * mult(L);


fun Mult [] = 0
    | Mult(r::R) =
    if r = [] then
        if R = [] then 1
        else Mult(R)
    else
        if R = [] then mult(r)
        else mult(r) * Mult(R);

(* 测试 *)
Mult([[], [1,2,3], [], [1,2]]);
