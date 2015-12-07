IO.puts "Library Functions"

# float to binary with 2 decimal points
IO.puts :erlang.float_to_binary(7.12, [decimals: 2])

# get value of env var
IO.puts System.get_env("HOME")

# return extension component of file name
IO.puts Path.extname("/some/obvious/file/extension.txt")

# return process's current working dir
IO.puts System.cwd()

# convert string containing json into elixir data structures
# Wow, the book says to not actually install it, and looking around
# this is actually something of a hot topic (or at least was)

# execute command in OS shell
System.cmd("echo", ["All Done"])
