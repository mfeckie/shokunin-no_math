defmodule NoMath.CLI do

  def main(args) do
    args
    |> to_ints
    |> sum_args(args)
  end

  defp to_ints(strings) do
    strings
    |> Enum.map(&Integer.parse/1)
    |> Enum.map(&retreive_int/1)
  end

  defp retreive_int({int, _}), do: int
  defp retreive_int(:error), do: 0

  def sum_args(numbers, args) do
    sum = NoMath.add(numbers)
    IO.puts("The sum of #{Enum.join(args, ", ")} is #{sum}")
  end
end
