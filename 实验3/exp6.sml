fun exists(p) = fn L => foldr (fn (a, b) => a orelse b) false (map p L)
fun forall(p) = fn L => foldr (fn (a, b) => a andalso b) true (map p L)

(* 判断是否是偶数 *)
fun testP(x) = x mod 2 = 0;


exists(testP) [1,3,5,7]; (* 不存在偶数 *)
exists(testP) [1,3,5,6]; (* 存在偶数6 *)
forall(testP) [0,2,4,5]; (* 存在5不是偶数 *)
forall(testP) [0,2,4,6]; (* 所有数字均为偶数 *)
