fun thenAddOne(f, i) = f(i) + 1;

fun testDouble(x) = 2 * x;
fun testSquare(x) = x*x;
fun testFactorial(0) = 1
    | testFactorial(x) = x * testFactorial(x-1);

thenAddOne(testDouble, 5); (* 5 * 2 + 1 = 11 *)
thenAddOne(testSquare, 5); (* 5 * 5 + 1 = 26 *)
thenAddOne(testFactorial, 5); (* 5 * 4 * 3 * 2 * 1 + 1 = 121*)