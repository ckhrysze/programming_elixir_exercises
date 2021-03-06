defmodule MyList do

  # ListsAndRecursion-0
  def sum([]), do: 0
  def sum([head|tail]), do: head+sum(tail)

  # ListsAndRecursion-1
  def mapsum([], _func), do: 0
  def mapsum([head|tail], func) do
    func.(head) + mapsum(tail, func)
  end

	# ListsAndRecursion-2
	def max([]), do: 0
	def max([head | tail]), do: _max(tail, head)

	defp _max([], high), do: high
	defp _max([head | tail], high) when head > high do
		_max(tail, head)
	end
	defp _max([_head | tail], high) do
		_max(tail, high)
	end

	# ListsAndRecursion-3
	def caesar([], _), do: []
	def caesar([head|tail], n) when head+n > 122 do
		[ head-26+n | caesar(tail, n) ]
	end
	def caesar([head|tail], n) do
		[ head+n | caesar(tail, n) ]
	end

	# ListsAndRecursion-4
	def span(to, to), do: [to]
	def span(from, to) when from > to, do: raise "From cannot be greater than to"
	def span(from, to), do: [from | span(from+1, to)]
end
