fun divisibleByThree(0: int) : bool = true
    | divisibleByThree 1 = false
    | divisibleByThree 2 = false
    | divisibleByThree n = 
    (* 考虑负数 *)
    if n > 0 then
    divisibleByThree(n-3)
    else
    divisibleByThree(~n);

(* 测试 *)
divisibleByThree(~3);
divisibleByThree(0);
divisibleByThree(1);
divisibleByThree(2);
divisibleByThree(3);
divisibleByThree(5);