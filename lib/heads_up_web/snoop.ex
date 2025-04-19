defmodule HeadsUpWeb.Snoop do
  @behaviour Plug
  import Plug.Conn

  @impl true
  def init(opts), do: opts

  @impl true
  def call(conn, _opts) do
    answer = ~w(Yes No Maybe) |> Enum.random()

    conn
    |> assign(:answer, answer)
  end
end
