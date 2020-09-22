defmodule ExMon do
  alias ExMon.{Player, Game}
  def create_player(name, move_avg, move_heal, move_rnd) do
    Player.build(name, move_avg, move_heal, move_rnd)
  end


  def start_game(player) do
    "robo"
    |> create_player(:punch, :kick, :heal)
    |> Game.start(player)
  end
end
