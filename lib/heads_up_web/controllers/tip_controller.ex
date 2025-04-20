defmodule HeadsUpWeb.TipController do
  use HeadsUpWeb, :controller
  alias HeadsUp.Tips

  def index(conn, _params) do
    tips = Tips.list_tips()
    emojis = ~w(😂 👌 🙌) |> Enum.random() |> String.duplicate(5)

    conn
    |> assign(:tips, tips)
    |> assign(:emojis, emojis)
    |> render(:index, layout: false)
  end
end
