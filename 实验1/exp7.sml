fun odd(0: int) : bool = false
    | odd 1 = true
    | odd n = odd(n-2);

(* 测试 *)
odd(0);
odd(1);
odd(2);
odd(3);