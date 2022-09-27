defmodule Creationals.Prototype.Tracker do
  @type queue :: %{events: list(), updated_at: DateTime.t() | nil}

  @spec new :: queue()
  def new, do: %{events: [], updated_at: nil}

  @spec new(list(), DateTime.t()) :: queue()
  defp new(events, updated_at) do
    %{events: events, updated_at: updated_at}
  end

  @spec add(queue(), map()) ::queue()
  def add(queue, %{} = event) do
    %{queue | events: [event | queue.events], updated_at: DateTime.utc_now()}
  end

  @spec remove(queue()) :: {map(), queue()}
  def remove(%{events: [head | tail]}) do
    {head, %{events: tail, updated_at: DateTime.utc_now()}}
  end

  @spec remove_all_events() :: queue()
  def remove_all_events do
    new([], DateTime.utc_now())
  end

  @spec copy(queue()) :: queue()
  def copy(%{events: events}) do
    new(events, DateTime.utc_now())
  end
end
