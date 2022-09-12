defmodule ExMon.Player do
  @required_keys [:life, :name, :moves, :cure]
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(name, fight, furious, cure) do
    %ExMon.Player{
      cure: cure,
      moves: %{
        fight: fight,
        furious: furious
      },
      life: @max_life,
      name: name
    }
  end
end
