defmodule Kv do
  @moduledoc """
  Documentation for `Kv`.
  """

  def get_element(kv, key) do
    Map.get(kv, key)
  end

  def set_element(kv, key, value) do
    Map.put(kv, key, value)
  end
end
