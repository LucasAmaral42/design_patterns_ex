defmodule Creationals.Builder.CharacterBuilder do
  @moduledoc """
  Module responsible to build character setting health, armor, strength, intelligence, dexterity.
  """

  alias Creationals.Builder.Classes.{
    Archer,
    Knight
  }

  def set_health(character, value), do: %{character | health: value}
  def set_armor(character, value), do: %{character | armor: value}
  def set_intelligence(character, value), do: %{character | intelligence: value}

  def set_dexterity(character = %Archer{}, value) when value > 10,
    do: %{character | dexterity: value, intelligence: character.health + round(0.42 * value)}

  def set_dexterity(character, value), do: %{character | dexterity: value}

  def set_strength(character = %Knight{}, value) when value > 8,
    do: %{character | strength: value, health: character.health + round(0.75 * value)}

  def set_strength(character, value), do: %{character | strength: value}
end
