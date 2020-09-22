defmodule ExMon.Game.Status do
  alias ExMon.Game

  def print_round_message() do
    IO.puts("\n==== the game has started! ====\n")
    IO.inspect(Game.info())
    IO.puts("\n-------------------------------")
  end

  def print_wrong_move_message(move) do
    IO.puts("\n==== Invalid move: #{move} ====")
  end

  def print_move_message(:computer, :attack, damage) do
    IO.puts("==== the player attacked the computer dealing #{damage} damage ====")
  end

  def print_move_message(:player, :attack, damage) do
    IO.puts("==== the player attacked the computer dealing #{damage} damage ====")
  end


end
