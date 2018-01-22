defmodule Guardian.UUID do
  @moduledoc """
  Compatibility layer to use Erlang uuid library
  without too many changes
  """

  @doc """
  Returns an UUIDv4 as string
  """
  def uuid4() do
    :uuid.get_v4()
    |> :uuid.uuid_to_string()
    |> to_string()
  end
end
