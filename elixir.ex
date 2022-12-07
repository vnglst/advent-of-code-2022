
# Split an array into different parts based on the delimiter ""
# Example: split(["a", "", "b", "c", "", "d"] --> [["a"], ["b", "c"], ["d"]]

defmodule Elixir do
  def split(array) do
    split(array, [], [])
  end

  defp split([], acc, result) do
    result ++ [acc]
  end

  defp split(["" | tail], acc, result) do
    split(tail, [], result ++ [acc])
  end

  defp split([head | tail], acc, result) do
    split(tail, acc ++ [head], result)
  end
end
