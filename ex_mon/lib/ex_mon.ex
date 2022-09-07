defmodule ExMon do
alias ExMon.Player
  
  def create_player(name, fight, furious, cure) do
     Player.build(name, fight, furious, cure)
  end
end
