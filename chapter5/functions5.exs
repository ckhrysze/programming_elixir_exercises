# NOTE: IO inspect over puts to see actual values and
# bypass the attempts to convert to readable characters

orig1 = Enum.map [1,2,3,4], fn x -> x + 2 end
IO.inspect orig1

Enum.each [1,2,3,4], fn x -> IO.inspect x end

rewrite1 = Enum.map [1,2,3,4], &(&1 + 2)
IO.inspect rewrite1

Enum.each [1,2,3,4], &IO.inspect(&1)

IO.puts "Done"
