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

  def show(conn, %{"id" => id}) do
    tip = Tips.get_tip(id)

    conn
    |> render(:show, tip: tip)
  end
end
