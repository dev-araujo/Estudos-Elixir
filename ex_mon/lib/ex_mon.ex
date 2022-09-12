defmodule ExMon do
  alias ExMon.{Game, Player}
  alias ExMon.Game.Actions

  @computer_name "Robotinix"

  def create_player(name, fight, furious, cure) do
    Player.build(name, fight, furious, cure)
  end

  def start_game(player) do
    @computer_name |> create_player(:garra, :explosao, :cura_sinistra) |> Game.start(player)

    IO.puts("\n========= THE GAME STARTED!!! ========\n")
    IO.inspect(ExMon.Game.info())
    IO.puts("-----------------")
  end

  def make_move(move) do
    Actions.fetch_move(move)
  end
end
