defmodule Chop do
  def guess(target, low..high) do
    suggest(div(low+high, 2), target, low..high)
  end

  def suggest(x, x, _), do: IO.puts("Yay: #{x}")
  def suggest(attempt, target, _low..high) when attempt < target do
    IO.puts("Is it #{attempt}")
    suggest(div(attempt+high, 2), target, attempt..high)
  end
  def suggest(attempt, target, low.._high) when attempt > target do
    IO.puts("Is it #{attempt}")
    suggest(div(low+attempt, 2),  target, low..attempt)
  end
end
