fact = fun [out < 0] { // Brackets denote an assumed precondition
   out = 0
   while (it >= 0) [out > 0] { // Brackets denote an estimated loop invariant
       out = out + it
       it = it - 1
   }

   assert out == 5 // Asserts serve as the postcondition
}

g = fun {
    x = x + 3
    y = 2

    if y >= 2
        x = x + 2
    else
        x = x - 2
    
    assert x > 5
}