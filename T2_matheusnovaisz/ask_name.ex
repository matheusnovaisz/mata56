defmodule AskName do

  def ask() do
    name = IO.gets("Qual o seu nome?\n") |> String.trim()
    case name do
      "Matheus" -> greeting(:chefe, name)
      _ -> greeting(:ok, name)
    end
  end

  def greeting(:ok, name) do
    IO.puts "Olá #{name}"
  end

  def greeting(:chefe, _) do
    IO.puts "Esse é o meu patrão"
  end

end


AskName.ask()
