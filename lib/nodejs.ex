defmodule NodeJS do
  def start_link(opts \\ []), do: NodeJS.Supervisor.start_link(opts)
  def stop(), do: NodeJS.Supervisor.stop()
  def checkout(opts \\ []), do: NodeJS.Supervisor.checkout(opts)
  def checkin(worker, opts \\ []), do: NodeJS.Supervisor.checkin(worker, opts)
  def call(module, args \\ [], opts \\ []), do: NodeJS.Supervisor.call(module, args, opts)
  def call!(module, args \\ [], opts \\ []), do: NodeJS.Supervisor.call!(module, args, opts)
end
