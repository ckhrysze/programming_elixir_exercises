defmodule StackServer do
	use GenServer

	def handle_call(:pop, _from, stack) do
		[ last | rest ] = Enum.reverse(stack)
		{:reply, last, Enum.reverse(rest)}
	end

	def handle_cast({:push, data}, stack) do
		newstack = stack
		|> Enum.reverse
		|> Enum.reverse([data])
		{:noreply, newstack}
	end
end
