defmodule HeadsUp.Snoop do
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    answer = ~w(Yes No Maybe) |> Enum.random()

    conn
    |> assign(:answer, answer)
  end
end
