prefix = fn(pre) ->
  fn(s) ->
    "#{pre} #{s}"
  end
end
