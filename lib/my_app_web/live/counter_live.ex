defmodule MyAppWeb.CounterLive do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_view
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :counter, 0)}
  end

  def handle_event("incr", _event, socket) do
    socket = update(socket, :counter, &(&1 + 1))

    {:noreply, socket}
  end
end
