defmodule PyCryptX.Application do
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
      worker(PyCryptX.Port, []),
    ]

    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PyCryptX.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
