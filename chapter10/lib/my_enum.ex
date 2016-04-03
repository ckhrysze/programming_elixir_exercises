defmodule MyEnum do

  # ListsAndRecursion-5
	def any?([], _func), do: false
	def any?([head|tail], func) do
		if func.(head) do
			true
		else
			any?(tail, func)
		end
	end
end
