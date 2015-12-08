defmodule MyList do
  # ListsAndRecursion-0
  def sum([]), do: 0
  def sum([head|tail]), do: head+sum(tail)

  # ListsAndRecursion-1
  def mapsum([], _func), do: 0
  def mapsum([head|tail], func) do
    func.(head) + mapsum(tail, func)
  end
end
