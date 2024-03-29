defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, factors) do
    1..(limit - 1)
    |> Stream.filter(fn number ->
      Enum.any?(factors, &(rem(number, &1) == 0))
    end)
    |> Enum.reduce(0, &+/2)
  end
end