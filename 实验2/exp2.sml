fun interleave([], B) = B
    | interleave(A, []) = A
    | interleave(a::A, b::B) = a::b::interleave(A, B);

interleave([2],[4]);
interleave([2,3],[4,5]);
interleave([2,3],[4,5,6,7,8,9]);
interleave([2,3],[]);