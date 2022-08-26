defmodule Creationals.Builder.Character do
  import Creationals.Builder.CharacterBuilder

  alias Creationals.Builder.Classes.{
    Archer,
    Knight,
    Mage
  }

  def build_character(:archer) do
    %Archer{}
    |> set_health(8)
    |> set_armor(4)
    |> set_intelligence(6)
    |> set_dexterity(8)
    |> set_strength(3)
  end

  def build_character(:smart_archer) do
    %Archer{}
    |> set_health(8)
    |> set_armor(4)
    |> set_intelligence(6)
    |> set_dexterity(12)
    |> set_strength(3)
  end

  def build_character(:knight) do
    %Knight{}
    |> set_health(12)
    |> set_armor(7)
    |> set_intelligence(3)
    |> set_dexterity(5)
    |> set_strength(8)
  end

  def build_character(:heavy_knight) do
    %Knight{}
    |> set_health(12)
    |> set_armor(8)
    |> set_intelligence(2)
    |> set_dexterity(2)
    |> set_strength(12)
  end

  def build_character(:mage) do
    %Mage{}
    |> set_health(6)
    |> set_armor(2)
    |> set_intelligence(12)
    |> set_dexterity(4)
    |> set_strength(3)
  end

  def build_character(_), do: {:error, "Need to specify the class as :archer, :smart_archer, :heavy_knight, :knight or :mage"}
end
