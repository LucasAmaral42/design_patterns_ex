defmodule Creationals.FactoryMethod.Items do
  alias __MODULE__.{
    Bow,
    Shield,
    Sword
  }

  def upgrade(item) do
    level_up(item)
    |> upgrade_attributes()
  end

  defp upgrade_attributes(bow = %Bow{}), do: level_up_attributes(bow)
  defp upgrade_attributes(shield = %Shield{}), do: level_up_attributes(shield)
  defp upgrade_attributes(sword = %Sword{}), do: level_up_attributes(sword)

  defp level_up(item), do: %{item | level: item.level + 1}

  defp level_up_attributes(item = %_{damage: damage}),
    do: %{item | damage: damage + 0.6 * item.level}

  defp level_up_attributes(item = %_{defense: defense}),
    do: %{item | defense: defense + 0.5 * item.level}

  defp level_up_attributes(item = %_{range: range}), do: %{item | range: range + 0.8 * item.level}
end
