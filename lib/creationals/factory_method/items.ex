defmodule Creationals.FactoryMethod.Items do
  alias __MODULE__.{
    Bow,
    Shield,
    Sword
  }

  def upgrade(bow = %Bow{}),
    do: %Bow{level: level_up_logic(:level, bow), range: level_up_logic(bow)}

  def upgrade(shield = %Shield{}),
    do: %Shield{level: level_up_logic(:level, shield), defense: level_up_logic(shield)}

  def upgrade(sword = %Sword{}),
    do: %Sword{level: level_up_logic(:level, sword), damage: level_up_logic(sword)}

  defp level_up_logic(:level, %_{level: level}), do: level + 1
  defp level_up_logic(%_{level: level, damage: damage}), do: damage + (0.6 * level + 1)
  defp level_up_logic(%_{level: level, defense: defense}), do: defense + (0.5 * level + 1)
  defp level_up_logic(%_{level: level, range: range}), do: range + (0.8 * level + 1)
end
