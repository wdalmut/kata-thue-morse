defmodule Thue do
  defp neg(str) do
    String.split(str, "")
      |> Enum.map(
        fn(bit) ->
          cond do
            bit == "0" -> "1"
            bit == "1" -> "0"
            true -> ""
          end
        end)
      |> Enum.join
  end

  defp thue(acc, n, size) do
    line = acc <> neg(acc)
    if (String.length(line) >= size) do
      String.slice(line, 0, size)
    else
      thue(line, n-1, size)
    end
  end

  def get(n) do
    thue("0", n-1, n)
  end
end
