defmodule GuessingGame do

  def begin() do
    minValue = IO.gets("Escolha o valor mínimo para o jogo\n") |> String.trim() |> String.to_integer()
    maxValue = IO.gets("Escolha o valor máximo para o jogo\n") |> String.trim() |> String.to_integer()
    guess(minValue, maxValue)
  end

  def guess(min, max) do
    rand = Enum.random(min..max)
    IO.gets("O seu número é #{rand}?\n") |> String.trim() |>
    case do
      "too high" -> guess(min, rand)
      "too low" -> guess(rand, max)
      "yes" -> IO.puts"A-ha, it was too easy, mate"
      _ -> IO.puts("You can type 'too low', 'too high' and 'yes'"); guess(min,max)
    end
  end

end

GuessingGame.begin()
