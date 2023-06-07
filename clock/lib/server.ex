defmodule Clock.Server do
  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, 1)
  end

  def init(init_arg) do
    send(self(), :tick)
    {:ok, init_arg}
  end

  def handle_info(:tick, state) do
    IO.puts("#{state}: #{Time.utc_now()}")
    Process.send_after(self(), :tick, 1 * 1000)
    {:noreply, state + 1}
  end
end
