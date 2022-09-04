defmodule FizzBuzz do
  def build(file_name) do
    file_name |> File.read() |> handle_file_read()
  end

  defp handle_file_read({:ok, result}) do
    result |> String.split(",") |> Enum.map(&convert_values / 1)
  end

  defp handle_file_read({:error, reason}) do
    "Error reading the file: #{reason}" 
  end

  defp convert_values(elem) do
    elem
    |> String.to_integer()
    |> evaluate()
  end

  defp evaluate(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluate(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate(number), do: number

end
