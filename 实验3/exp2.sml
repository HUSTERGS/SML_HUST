fun mapList(f, []) = []
    | mapList(f, x::L) = f(x)::mapList(f, L);

fun testDouble(x) = 2 * x;

(* 测试mapList *)

mapList(testDouble, [1,2,3,4,5]);

