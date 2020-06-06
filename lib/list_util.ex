defmodule ListUtil do
  def to_map(list, default \\ nil, acc \\ [])

  def to_map([a, b | tail], default, acc), do: to_map(tail, default, [{a, b} | acc])

  def to_map([a | tail], default, acc), do: to_map(tail, default, [{a, default} | acc])

  def to_map(_, _, acc), do: Map.new(acc)
end
