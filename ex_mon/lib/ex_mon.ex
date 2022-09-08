defmodule ExMon do
  alias ExMon.Player

  def create_player(name, fight, furious, cure) do
    Player.build(name, fight, furious, cure)
  end

  def start_game(player) do
    computer = create_player("Robotinix", :garra, :explosao, :cura_sinistra)
    ExMon.Game.start(computer, player)
  end
end
