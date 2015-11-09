buzzer = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

fizzbuzz = fn(n) -> buzzer.(rem(n,3), rem(n,5), n) end

for i <- 1..20 do
  IO.puts(fizzbuzz.(i))
end

