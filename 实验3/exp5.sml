datatype 'a option = NONE | SOME of 'a;

fun subsetSumOption([], s) = NONE
    | subsetSumOption(x::L, s) = 
    if x = s then SOME [x]
    else if x > s then subsetSumOption(L, s)
    else 
    (* 分为选或者不选两种情况 *)
    case subsetSumOption(L, s-x) of
      NONE  => subsetSumOption(L, s)
     | SOME y => SOME (x::y);
    

subsetSumOption([1,2,3], 7);
subsetSumOption([1,2,3], 6);
subsetSumOption([1,2,3], 5);
subsetSumOption([1,2,3], 4);
subsetSumOption([1,2,3], 3);
