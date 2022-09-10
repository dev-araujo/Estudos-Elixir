defmodule ExMon do
  alias ExMon.{Game, Player}

  @computer_name "Robotinix"

  def create_player(name, fight, furious, cure) do
    Player.build(name, fight, furious, cure)
  end

  def start_game(player) do
    @computer_name |> create_player(:garra, :explosao, :cura_sinistra) |> Game.start(player)
  end
end
