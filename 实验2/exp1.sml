fun reverse([]) = []
    | reverse(x::L) = reverse(L)@[x];

(* add element one by one *)
fun reverseHelper([], B) = B
    | reverseHelper(x::A, B) = reverseHelper(A, x::B);

fun reverse'([]) = []
    | reverse'(L) = reverseHelper(L, []);

reverse [1,2,3,4];
reverse' [1,2,3,4];

