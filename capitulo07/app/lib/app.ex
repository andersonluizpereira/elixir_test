defmodule App do
  @moduledoc """
  Documentation for `App`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> App.hello()
      :world

  """
  def hello do
    :world
  end
  defmodule App.Hello do
  @prefix Application.get_env(:app, __MODULE__)[:prefix]
    def say(str) do
      "#{@prefix} <> #{str}"
    end
  end    
end
