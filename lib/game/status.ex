defmodule ExMon.Game.Status do
  alias ExMon.Game

  def print_round_message(%{status: :started} = info) do
    IO.puts("\n==== the game has started! ====\n")
    IO.inspect(info)
    IO.puts("\n-------------------------------")
  end

  def print_round_message(%{status: :continue, turn: player} = info) do
    IO.puts("\n==== It's #{player} turn. ====\n")
    IO.inspect(info)
    IO.puts("\n-------------------------------")
  end

  def print_round_message(%{status: :game_over} = info) do
    IO.puts("\n==== the game is over ====\n")
    IO.inspect(info)
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
