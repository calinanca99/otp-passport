defmodule Kv.Server do
  use GenServer
  alias Kv

  def start_link() do
    GenServer.start_link(__MODULE__, %{})
  end

  def init(init_arg) do
    {:ok, init_arg}
  end

  def handle_call({:get, key}, _from, state) do
    {:reply, Kv.get_element(state, key), state}
  end

  def handle_cast({:set, key, value}, state) do
    {:noreply, Kv.set_element(state, key, value)}
  end

  def set(pid, key, value), do: GenServer.cast(pid, {:set, key, value})
  def get(pid, key), do: GenServer.call(pid, {:get, key})
end
