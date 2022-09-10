defmodule Creationals.AbstractFactory.Races do
  @moduledoc """
    Module responsible to create characters by races
  """

  alias Creationals.AbstractFactory.Classes.{
    Archer,
    Knight,
    Mage
  }

  def create_character(:elf, :archer),
    do: %Archer{health: 10, armor: 2, strength: 4, intelligence: 3, dexterity: 10}

  def create_character(:human, :archer),
    do: %Archer{health: 10, armor: 2, strength: 4, intelligence: 4, dexterity: 7}

  def create_character(:orc, :archer),
    do: %Archer{health: 10, armor: 2, strength: 5, intelligence: 2, dexterity: 6}

  def create_character(:elf, :knight),
    do: %Knight{health: 14, armor: 5, strength: 7, intelligence: 3, dexterity: 5}

  def create_character(:human, :knight),
    do: %Knight{health: 14, armor: 5, strength: 8, intelligence: 4, dexterity: 4}

  def create_character(:orc, :knight),
    do: %Knight{health: 18, armor: 6, strength: 10, intelligence: 2, dexterity: 3}

  def create_character(:elf, :mage),
    do: %Mage{health: 10, armor: 2, strength: 3, intelligence: 5, dexterity: 4}

  def create_character(:human, :mage),
    do: %Mage{health: 10, armor: 2, strength: 3, intelligence: 5, dexterity: 3}

  def create_character(:orc, :mage),
    do: %Mage{health: 10, armor: 2, strength: 4, intelligence: 3, dexterity: 3}
end
