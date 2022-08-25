defmodule Creationals.FactoryMethod.ItemCreator do
  @moduledoc """
  Responsible to constructing the Item that app needs.
  """

  alias Creationals.FactoryMethod.Items.{
    Bow,
    Shield,
    Sword
  }

  def create(:sword, %{damage: damage, level: level}), do: %Sword{level: level, damage: damage}
  def create(:sword, %{level: level}), do: %Sword{level: level}

  def create(:shield, %{defense: defense, level: level}), do: %Shield{level: level, defense: defense}
  def create(:shield, %{level: level}), do: %Shield{level: level}

  def create(:bow, %{range: range, level: level}), do: %Bow{level: level, range: range}
  def create(:bow, %{level: level}), do: %Bow{level: level}

  def create(:shield), do: %Shield{}
  def create(:sword), do: %Sword{}
  def create(:bow), do: %Bow{}
end
