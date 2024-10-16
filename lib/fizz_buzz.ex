defmodule FizzBuzz do
  defp evaluate_numbers(numb) when rem(numb, 3) == 0 and rem(numb, 5) == 0, do: :fizzbuzz
  defp evaluate_numbers(numb) when rem(numb, 3) == 0, do: :fizz
  defp evaluate_numbers(numb) when rem(numb, 5) == 0, do: :buzz
  defp evaluate_numbers(numb), do: numb

  defp convert_and_evaluate_numbers(elem) do
    elem
    |> String.to_integer()
    |> evaluate_numbers()
  end

  defp handle_file_read({:ok, file_content}) do
    file_content =
      file_content
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, file_content}
  end

  defp handle_file_read({:error, reason}), do: {:error, "Error reading the file: #{reason}"}

  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end
end
