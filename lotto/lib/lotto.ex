defmodule Lotto do
  def getLotto do
    Enum.to_list(1..45)
    |> Enum.shuffle
    |> Enum.slice(0..5)
    |> Enum.sort
    |> Enum.join(", ")
  end

  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)
end
